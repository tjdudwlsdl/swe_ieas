package bin;
import java.io.BufferedReader;
import java.io.InputStreamReader;

// DB 테이블 생성 등 초기 설치 작업을 진행합니다.
public class IEAS_install {
	private static final String COMMAND_FORMAT = "mysql -u %s --password=%s < ieas.sql";
	
	public static void main(String[] args) {
		if (args.length != 2) {
			System.out.println("Usage : IEAS_install {rootID} {password}");
			return;
		}
		
		String id = args[0];
		String password = args[1];
		
		Runtime runtime = Runtime.getRuntime();
		try {
			Process process = runtime.exec(String.format(COMMAND_FORMAT, id, password));
			
			InputStreamReader isr=null;
			BufferedReader br=null;
			try {
				isr = new InputStreamReader(process.getInputStream());
				br = new BufferedReader(isr);
				String szLine;
				while ((szLine = br.readLine()) != null) {
					System.out.println(szLine);
				}
			}
			catch(Exception e) {
				throw e;
			}
			finally {
				try {
					if(isr != null)
						isr.close();
				} catch(Exception ignore) { }
			}
			
			System.out.println("Install Completed.");
		}
		catch(Exception e) {
			System.out.println("Install Failed.");
		}
	}
}
