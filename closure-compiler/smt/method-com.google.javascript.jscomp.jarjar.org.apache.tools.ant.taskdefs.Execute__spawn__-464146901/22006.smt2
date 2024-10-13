(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1463 0)
(declare-sort var3466 0)
(declare-sort var48 0)
(declare-sort var1680 0)
(declare-sort var555 0)
(declare-sort var2030 0)
(declare-sort var1853 0)
(declare-sort var3308 0)
(declare-sort var2656 0)
(declare-sort var1546 0)
(declare-sort var3487 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun workingDirectory/-2141296999 (var1463) var3466)
(declare-fun project/-2141296999 (var1463) var48)
(declare-fun getCommandline/-193585378 (var1463) (Array Int String))
(declare-fun getEnvironment/-983232950 (var1463) (Array Int String))
(declare-fun useVMLauncher/-2141296999 (var1463) Bool)
(declare-fun var1463_launch/1196594126 (var48 (Array Int String) (Array Int String) var3466 Bool) var1680)
(declare-fun var555_isFamily/1764167399 (String) Bool)
(declare-fun var2030-init () var2030)
(declare-fun <init>/-336694252 (var2030 var1463) void)
(declare-fun var1853-init () var1853)
(declare-fun <init>/-1251773684 (var1853 var3308) void)
(declare-fun cast-from-var2030-to-var3308 (var2030) var3308)
(declare-fun getErrorStream/-396107212 (var1680) var2656)
(declare-fun var1546_setProcessErrorStream/966874237 (var1546 var2656) void)
(declare-fun cast-from-var1853-to-var1546 (var1853) var1546)
(declare-fun getInputStream/207271602 (var1680) var2656)
(declare-fun var1546_setProcessOutputStream/-1231813822 (var1546 var2656) void)
(declare-fun var1546_start/-573167884 (var1546) void)
(declare-fun getOutputStream/-1355770428 (var1680) var3308)
(declare-fun close/1295285938 (var3308) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-522406933 (var3487) String)
(declare-fun cast-from-var1680-to-var3487 (var1680) var3487)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/2093317233 (var48 String Int) void)
(declare-const null-var1463 var1463)
(declare-const null-var3466 var3466)
(declare-const var2368 var1463) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute 
(assert (not (= var2368 null-var1463)))
(define-const var648 var3466 (workingDirectory/-2141296999 var2368)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: java.io.File workingDirectory> 
 ; Statement: if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project> 
(assert (= var648 null-var3466)) ; Cond: $r1 == null 
(define-const var512 var48 (project/-2141296999 var2368)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project> 
(assert true)
(define-const var1409 (Array Int String) (getCommandline/-193585378 var2368)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: java.lang.String[] getCommandline()>() 
(assert true)
(define-const var632 (Array Int String) (getEnvironment/-983232950 var2368)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: java.lang.String[] getEnvironment()>() 
(define-const var831 var3466 (workingDirectory/-2141296999 var2368)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: java.io.File workingDirectory> 
(define-const var3391 Bool (useVMLauncher/-2141296999 var2368)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: boolean useVMLauncher> 
(define-const var2382 var1680 (var1463_launch/1196594126 var512 var1409 var632 var831 var3391)) ; Statement: $r7 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: java.lang.Process launch(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.lang.String[],java.lang.String[],java.io.File,boolean)>($r2, $r5, $r4, $r3, $z0) 
(define-const var2591 Bool (var555_isFamily/1764167399 "windows")) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: boolean isFamily(java.lang.String)>("windows") 
 ; Statement: if $z1 == 0 goto $r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute$1 
(assert (= (ite var2591 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1367 var2030 var2030-init) ; Statement: $r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute$1 
(assert true)
;(assert (<init>/-336694252 var1367 var2368)) ; Statement: specialinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute$1: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute)>(r0) 

(declare-const var1367!1 var2030)
(declare-const var2368!1 var1463)
(define-const var865 var1853 var1853-init) ; Statement: $r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PumpStreamHandler 
(assert true)
;(assert (<init>/-1251773684 var865 (cast-from-var2030-to-var3308 var1367!1))) ; Statement: specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PumpStreamHandler: void <init>(java.io.OutputStream)>($r13) 

(declare-const var865!1 var1853)
(declare-const var1367!2 var2030)
(assert true)
(define-const var2156 var2656 (getErrorStream/-396107212 var2382)) ; Statement: $r15 = virtualinvoke $r7.<java.lang.Process: java.io.InputStream getErrorStream()>() 
;(assert (var1546_setProcessErrorStream/966874237 (cast-from-var1853-to-var1546 var865!1) var2156)) ; Statement: interfaceinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteStreamHandler: void setProcessErrorStream(java.io.InputStream)>($r15) 

(declare-const var865!2 var1853)
(declare-const var2156!1 var2656)
(assert true)
(define-const var2372 var2656 (getInputStream/207271602 var2382)) ; Statement: $r16 = virtualinvoke $r7.<java.lang.Process: java.io.InputStream getInputStream()>() 
;(assert (var1546_setProcessOutputStream/-1231813822 (cast-from-var1853-to-var1546 var865!2) var2372)) ; Statement: interfaceinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteStreamHandler: void setProcessOutputStream(java.io.InputStream)>($r16) 

(declare-const var865!3 var1853)
(declare-const var2372!1 var2656)
;(assert (var1546_start/-573167884 (cast-from-var1853-to-var1546 var865!3))) ; Statement: interfaceinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteStreamHandler: void start()>() 

(declare-const var865!4 var1853)
(assert true)
(define-const var3945 var3308 (getOutputStream/-1355770428 var2382)) ; Statement: $r17 = virtualinvoke $r7.<java.lang.Process: java.io.OutputStream getOutputStream()>() 
(assert true)
;(assert (close/1295285938 var3945)) ; Statement: virtualinvoke $r17.<java.io.OutputStream: void close()>() 

(declare-const var3945!1 var3308)
(define-const var2495 var48 (project/-2141296999 var2368!1)) ; Statement: $r18 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project> 
(define-const var2453 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2453)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2453!1 String)
(assert (= var2453!1 ""))
(assert true)
(define-const var2120 String (append/672562846 var2453!1 "spawned process ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("spawned process ") 
(declare-const var2453!2 String)
(assert (= var2453!2 (str.++ var2453!1 "spawned process ")))
(assert true)
(define-const var670 String (toString/-522406933 (cast-from-var1680-to-var3487 var2382))) ; Statement: $r21 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3820 String (append/672562846 var2120 var670)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var2120!1 String)
(assert (= var2120!1 (str.++ var2120 var670)))
(assert true)
(define-const var1571 String (toString/-2075883882 var3820)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/2093317233 var2495 var1571 3)) ; Statement: virtualinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r23, 3) 

(declare-const var2495!1 var48)
(declare-const var1571!1 String)
(declare-const var2903 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {workingDirectory/-2141296999=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute], java.io.File), project/-2141296999=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), getCommandline/-193585378=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute], java.lang.String[]), getEnvironment/-983232950=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute], java.lang.String[]), useVMLauncher/-2141296999=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute], boolean), var1463_launch/1196594126=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String[], java.lang.String[], java.io.File, boolean], java.lang.Process), var555_isFamily/1764167399=([java.lang.String], boolean), var2030-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute$1), <init>/-336694252=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute$1, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute], void), var1853-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PumpStreamHandler), <init>/-1251773684=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PumpStreamHandler, java.io.OutputStream], void), cast-from-var2030-to-var3308=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute$1], java.io.OutputStream), getErrorStream/-396107212=([java.lang.Process], java.io.InputStream), var1546_setProcessErrorStream/966874237=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteStreamHandler, java.io.InputStream], void), cast-from-var1853-to-var1546=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PumpStreamHandler], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteStreamHandler), getInputStream/207271602=([java.lang.Process], java.io.InputStream), var1546_setProcessOutputStream/-1231813822=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteStreamHandler, java.io.InputStream], void), var1546_start/-573167884=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteStreamHandler], void), getOutputStream/-1355770428=([java.lang.Process], java.io.OutputStream), close/1295285938=([java.io.OutputStream], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1680-to-var3487=([java.lang.Process], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/2093317233=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, int], void)}
; {var1463=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute, var2368=r0, var3466=java.io.File, var648=$r1, var48=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var512=$r2, var1409=$r5, var632=$r4, var831=$r3, var3391=$z0, var1680=java.lang.Process, var2382=$r7, var555=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os, var2591=$z1, var2030=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute$1, var1367=$r13, var1853=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PumpStreamHandler, var865=$r14, var3308=java.io.OutputStream, var2656=java.io.InputStream, var2156=$r15, var1546=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteStreamHandler, var2372=$r16, var3945=$r17, var2495=$r18, var2453=$r19, var2120=$r20, var3487=java.lang.Object, var670=$r21, var3820=$r22, var1571=$r23, var2903=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute=var1463, r0=var2368, java.io.File=var3466, $r1=var648, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var48, $r2=var512, $r5=var1409, $r4=var632, $r3=var831, $z0=var3391, java.lang.Process=var1680, $r7=var2382, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os=var555, $z1=var2591, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute$1=var2030, $r13=var1367, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PumpStreamHandler=var1853, $r14=var865, java.io.OutputStream=var3308, java.io.InputStream=var2656, $r15=var2156, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteStreamHandler=var1546, $r16=var2372, $r17=var3945, $r18=var2495, $r19=var2453, $r20=var2120, java.lang.Object=var3487, $r21=var670, $r22=var3820, $r23=var1571, 3=var2903}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: java.io.File workingDirectory>;	if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project>;	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: java.lang.String[] getCommandline()>();	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: java.lang.String[] getEnvironment()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: java.io.File workingDirectory>;	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: boolean useVMLauncher>;	$r7 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: java.lang.Process launch(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.lang.String[],java.lang.String[],java.io.File,boolean)>($r2, $r5, $r4, $r3, $z0);	$z1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: boolean isFamily(java.lang.String)>("windows");	if $z1 == 0 goto $r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute$1;	$r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute$1;	specialinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute$1: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute)>(r0);	$r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PumpStreamHandler;	specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PumpStreamHandler: void <init>(java.io.OutputStream)>($r13);	$r15 = virtualinvoke $r7.<java.lang.Process: java.io.InputStream getErrorStream()>();	interfaceinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteStreamHandler: void setProcessErrorStream(java.io.InputStream)>($r15);	$r16 = virtualinvoke $r7.<java.lang.Process: java.io.InputStream getInputStream()>();	interfaceinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteStreamHandler: void setProcessOutputStream(java.io.InputStream)>($r16);	interfaceinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteStreamHandler: void start()>();	$r17 = virtualinvoke $r7.<java.lang.Process: java.io.OutputStream getOutputStream()>();	virtualinvoke $r17.<java.io.OutputStream: void close()>();	$r18 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project>;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("spawned process ");	$r21 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r23, 3);	return
;block_num 3