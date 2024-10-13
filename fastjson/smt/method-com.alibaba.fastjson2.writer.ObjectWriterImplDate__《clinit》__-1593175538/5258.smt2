(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var217 0)
(declare-sort var9 0)
(declare-sort var1228 0)
(declare-sort var190 0)
(declare-sort var2345 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var217-init () var217)
(declare-fun <init>/-636229498 (var217 String var1228) void)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getBytes/-163691139 (String var190) (Array Int Int))
(declare-const null-NullType var9)
(declare-const null-String String)
(declare-const null-var1228 var1228)
(declare-const var2345-UTF_8 var190)
(define-const var1081 var217 var217-init) ; Statement: $r0 = new com.alibaba.fastjson2.writer.ObjectWriterImplDate 
(assert true)
;(assert (<init>/-636229498 var1081 null-String null-var1228)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.writer.ObjectWriterImplDate: void <init>(java.lang.String,java.util.Locale)>(null, null) 

(declare-const var1081!1 var217)
(declare-const var2695 var9)
(declare-const var2695!1 var9)
(define-const var2276 var217 var1081!1) ; Statement: <com.alibaba.fastjson2.writer.ObjectWriterImplDate: com.alibaba.fastjson2.writer.ObjectWriterImplDate INSTANCE> = $r0 
(define-const var3948 String "new Date(") ; Statement: $r1 = "new Date(" 
(assert true)
(define-const var3388 (Array Int Int) (toCharArray/415275702 var3948)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: char[] toCharArray()>() 
(define-const var3011 (Array Int Int) var3388) ; Statement: <com.alibaba.fastjson2.writer.ObjectWriterImplDate: char[] PREFIX_CHARS> = $r2 
(define-const var872 String "new Date(") ; Statement: $r4 = "new Date(" 
(define-const var496 var190 var2345-UTF_8) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var650 (Array Int Int) (getBytes/-163691139 var872 var496)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
(define-const var1516 (Array Int Int) var650) ; Statement: <com.alibaba.fastjson2.writer.ObjectWriterImplDate: byte[] PREFIX_BYTES> = $r5 
(define-const var1074 String "{\u0022@type\u0022:\u0022java.sql.Date\u0022,\u0022val\u0022:") ; Statement: $r6 = "{\"@type\":\"java.sql.Date\",\"val\":" 
(assert true)
(define-const var1155 (Array Int Int) (toCharArray/415275702 var1074)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: char[] toCharArray()>() 
(define-const var3761 (Array Int Int) var1155) ; Statement: <com.alibaba.fastjson2.writer.ObjectWriterImplDate: char[] PREFIX_CHARS_SQL> = $r7 
(define-const var3799 String "{\u0022@type\u0022:\u0022java.sql.Date\u0022,\u0022val\u0022:") ; Statement: $r9 = "{\"@type\":\"java.sql.Date\",\"val\":" 
(define-const var1510 var190 var2345-UTF_8) ; Statement: $r8 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var871 (Array Int Int) (getBytes/-163691139 var3799 var1510)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r8) 
(define-const var2983 (Array Int Int) var871) ; Statement: <com.alibaba.fastjson2.writer.ObjectWriterImplDate: byte[] PREFIX_BYTES_SQL> = $r10 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var217-init=([], com.alibaba.fastjson2.writer.ObjectWriterImplDate), <init>/-636229498=([com.alibaba.fastjson2.writer.ObjectWriterImplDate, java.lang.String, java.util.Locale], void), toCharArray/415275702=([java.lang.String], char[]), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[])}
; {var217=com.alibaba.fastjson2.writer.ObjectWriterImplDate, var1081=$r0, var9=null_type, var1228=java.util.Locale, var2695=null, var2276=<com.alibaba.fastjson2.writer.ObjectWriterImplDate: com.alibaba.fastjson2.writer.ObjectWriterImplDate INSTANCE>, var3948=$r1, var3388=$r2, var3011=<com.alibaba.fastjson2.writer.ObjectWriterImplDate: char[] PREFIX_CHARS>, var872=$r4, var190=java.nio.charset.Charset, var2345=java.nio.charset.StandardCharsets, var496=$r3, var650=$r5, var1516=<com.alibaba.fastjson2.writer.ObjectWriterImplDate: byte[] PREFIX_BYTES>, var1074=$r6, var1155=$r7, var3761=<com.alibaba.fastjson2.writer.ObjectWriterImplDate: char[] PREFIX_CHARS_SQL>, var3799=$r9, var1510=$r8, var871=$r10, var2983=<com.alibaba.fastjson2.writer.ObjectWriterImplDate: byte[] PREFIX_BYTES_SQL>}
; {com.alibaba.fastjson2.writer.ObjectWriterImplDate=var217, $r0=var1081, null_type=var9, java.util.Locale=var1228, null=var2695, <com.alibaba.fastjson2.writer.ObjectWriterImplDate: com.alibaba.fastjson2.writer.ObjectWriterImplDate INSTANCE>=var2276, $r1=var3948, $r2=var3388, <com.alibaba.fastjson2.writer.ObjectWriterImplDate: char[] PREFIX_CHARS>=var3011, $r4=var872, java.nio.charset.Charset=var190, java.nio.charset.StandardCharsets=var2345, $r3=var496, $r5=var650, <com.alibaba.fastjson2.writer.ObjectWriterImplDate: byte[] PREFIX_BYTES>=var1516, $r6=var1074, $r7=var1155, <com.alibaba.fastjson2.writer.ObjectWriterImplDate: char[] PREFIX_CHARS_SQL>=var3761, $r9=var3799, $r8=var1510, $r10=var871, <com.alibaba.fastjson2.writer.ObjectWriterImplDate: byte[] PREFIX_BYTES_SQL>=var2983}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: char[] toCharArray()>": 2,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 2}
;stmts $r0 = new com.alibaba.fastjson2.writer.ObjectWriterImplDate;	specialinvoke $r0.<com.alibaba.fastjson2.writer.ObjectWriterImplDate: void <init>(java.lang.String,java.util.Locale)>(null, null);	<com.alibaba.fastjson2.writer.ObjectWriterImplDate: com.alibaba.fastjson2.writer.ObjectWriterImplDate INSTANCE> = $r0;	$r1 = "new Date(";	$r2 = virtualinvoke $r1.<java.lang.String: char[] toCharArray()>();	<com.alibaba.fastjson2.writer.ObjectWriterImplDate: char[] PREFIX_CHARS> = $r2;	$r4 = "new Date(";	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	$r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	<com.alibaba.fastjson2.writer.ObjectWriterImplDate: byte[] PREFIX_BYTES> = $r5;	$r6 = "{\"@type\":\"java.sql.Date\",\"val\":";	$r7 = virtualinvoke $r6.<java.lang.String: char[] toCharArray()>();	<com.alibaba.fastjson2.writer.ObjectWriterImplDate: char[] PREFIX_CHARS_SQL> = $r7;	$r9 = "{\"@type\":\"java.sql.Date\",\"val\":";	$r8 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	$r10 = virtualinvoke $r9.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r8);	<com.alibaba.fastjson2.writer.ObjectWriterImplDate: byte[] PREFIX_BYTES_SQL> = $r10;	return
;block_num 1