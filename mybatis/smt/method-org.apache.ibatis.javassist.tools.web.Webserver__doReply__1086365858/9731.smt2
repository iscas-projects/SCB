(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1327 0)
(declare-sort var3261 0)
(declare-sort var2624 0)
(declare-sort var3499 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun letUsersSendClassfile/-310618689 (var1327 var2624 String Int) Bool)
(declare-const null-var1327 var1327)
(declare-const null-var3261 var3261)
(declare-const null-var2624 var2624)
(declare-const null-String String)
(declare-const var315 var1327) ; Statement: r3 := @this: org.apache.ibatis.javassist.tools.web.Webserver 
(assert (not (= var315 null-var1327)))
(declare-const var3035 var3261) ; Statement: r21 := @parameter0: java.io.InputStream 
(assert (not (= var3035 null-var3261)))
(declare-const var640 var2624) ; Statement: r15 := @parameter1: java.io.OutputStream 
(assert (not (= var640 null-var2624)))
(declare-const var2279 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var2279 null-String)))
(assert true)
(define-const var3142 Bool (startsWith/-1785782452 var2279 "GET /")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("GET /") 
 ; Statement: if $z0 == 0 goto $r25 = new org.apache.ibatis.javassist.tools.web.BadHttpRequest 
(assert (not (= (ite var3142 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1742 Int (indexOf/1426977840 var2279 32 5)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(32, 5) 
(assert (and true (and (>= 5 0) (>= (str.len var2279) var1742) (>= var1742 5))))
(define-const var2973 String (substring/-1240304868 var2279 5 var1742)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(5, $i0) 
(define-const var987 String var2973) ; Statement: r22 = $r2 
 ; Statement: goto [?= $z1 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>(".class")] 
(assert true) ; Non Conditional
(assert true)
(define-const var1412 Bool (endsWith/985337093 var2973 ".class")) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>(".class") 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>(".html") 
(assert (not (= (ite var1412 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1323 Int 2) ; Statement: b8 = 2 
(define-const var1235 Int 2) ; Statement: b12 = 2 
(define-const var1485 Int 2) ; Statement: b11 = 2 
(define-const var684 Int 2) ; Statement: b10 = 2 
 ; Statement: goto [?= $i9 = virtualinvoke $r2.<java.lang.String: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1971 Int (length/-134980193 var2973)) ; Statement: $i9 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if b10 != 2 goto specialinvoke r3.<org.apache.ibatis.javassist.tools.web.Webserver: void checkFilename(java.lang.String,int)>($r2, $i9) 
(assert (not (not (= var684 2)))) ; Negate: Cond: b10 != 2  
(assert true)
(define-const var453 Bool (letUsersSendClassfile/-310618689 var315 var640 var2973 var1971)) ; Statement: $z4 = specialinvoke r3.<org.apache.ibatis.javassist.tools.web.Webserver: boolean letUsersSendClassfile(java.io.OutputStream,java.lang.String,int)>(r15, $r2, $i9) 
 ; Statement: if $z4 == 0 goto specialinvoke r3.<org.apache.ibatis.javassist.tools.web.Webserver: void checkFilename(java.lang.String,int)>($r2, $i9) 
(assert (not (= (ite var453 1 0) 0))) ; Negate: Cond: $z4 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), indexOf/1426977840=([java.lang.String, int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), letUsersSendClassfile/-310618689=([org.apache.ibatis.javassist.tools.web.Webserver, java.io.OutputStream, java.lang.String, int], boolean)}
; {var1327=org.apache.ibatis.javassist.tools.web.Webserver, var315=r3, var3261=java.io.InputStream, var3035=r21, var2624=java.io.OutputStream, var640=r15, var2279=r0, var3499=null_type, var3142=$z0, var1742=$i0, var2973=$r2, var987=r22, var1412=$z1, var1323=b8, var1235=b12, var1485=b11, var684=b10, var1971=$i9, var453=$z4}
; {org.apache.ibatis.javassist.tools.web.Webserver=var1327, r3=var315, java.io.InputStream=var3261, r21=var3035, java.io.OutputStream=var2624, r15=var640, r0=var2279, null_type=var3499, $z0=var3142, $i0=var1742, $r2=var2973, r22=var987, $z1=var1412, b8=var1323, b12=var1235, b11=var1485, b10=var684, $i9=var1971, $z4=var453}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int indexOf(int,int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1}
;stmts r3 := @this: org.apache.ibatis.javassist.tools.web.Webserver;	r21 := @parameter0: java.io.InputStream;	r15 := @parameter1: java.io.OutputStream;	r0 := @parameter2: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("GET /");	if $z0 == 0 goto $r25 = new org.apache.ibatis.javassist.tools.web.BadHttpRequest;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(32, 5);	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(5, $i0);	r22 = $r2;	goto [?= $z1 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>(".class")];	$z1 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>(".class");	if $z1 == 0 goto $z2 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>(".html");	b8 = 2;	b12 = 2;	b11 = 2;	b10 = 2;	goto [?= $i9 = virtualinvoke $r2.<java.lang.String: int length()>()];	$i9 = virtualinvoke $r2.<java.lang.String: int length()>();	if b10 != 2 goto specialinvoke r3.<org.apache.ibatis.javassist.tools.web.Webserver: void checkFilename(java.lang.String,int)>($r2, $i9);	$z4 = specialinvoke r3.<org.apache.ibatis.javassist.tools.web.Webserver: boolean letUsersSendClassfile(java.io.OutputStream,java.lang.String,int)>(r15, $r2, $i9);	if $z4 == 0 goto specialinvoke r3.<org.apache.ibatis.javassist.tools.web.Webserver: void checkFilename(java.lang.String,int)>($r2, $i9);	return
;block_num 7