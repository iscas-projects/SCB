(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var853 0)
(declare-sort var1054 0)
(declare-sort var1405 0)
(declare-sort var465 0)
(declare-sort var3477 0)
(declare-sort var1613 0)
(declare-sort var2864 0)
(declare-sort var74 0)
(declare-sort var3607 0)
(declare-sort var2514 0)
(declare-sort var968 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var3477) ClassObject)
(declare-fun cast-from-var853-to-var3477 (var853) var3477)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1405 String) void)
(declare-fun var1613-init () var1613)
(declare-fun errMgr/787585255 (var853) var74)
(declare-fun IOError/-895345567 (var74 var2514 var3607 var968 var3477) void)
(declare-fun cast-from-var2864-to-var968 (var2864) var968)
(declare-fun cast-from-String-to-var3477 (String) var3477)
(declare-const null-var853 var853)
(declare-const null-String String)
(declare-const var853-verbose Bool)
(declare-const var465-out var1405)
(declare-const null-var2864 var2864)
(declare-const var3607-CANT_LOAD_GROUP_FILE var3607)
(declare-const null-NullType var1054)
(declare-const null-var2514 var2514)
(declare-const var3066 var853) ; Statement: r3 := @this: org.stringtemplate.v4.STGroup 
(assert (not (= var3066 null-var853)))
(declare-const var1392 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var1392 null-String)))
(declare-const var1391 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1391 null-String)))
(define-const var3333 Bool var853-verbose) ; Statement: $z0 = <org.stringtemplate.v4.STGroup: boolean verbose> 
 ; Statement: if $z0 == 0 goto $r25 = new java.net.URL 
(assert (not (= (ite var3333 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2910 var1405 var465-out) ; Statement: $r11 = <java.lang.System: java.io.PrintStream out> 
(define-const var2614 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2614)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2614!1 String)
(assert (= var2614!1 ""))
(assert true)
(define-const var1764 ClassObject (getClass/1258963082 (cast-from-var853-to-var3477 var3066))) ; Statement: $r12 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1966 String (getSimpleName/-390194377 var1764)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2125 String (append/672562846 var2614!1 var1966)) ; Statement: $r14 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2614!2 String)
(assert (= var2614!2 (str.++ var2614!1 var1966)))
(assert true)
(define-const var3857 String (append/672562846 var2125 ".loadGroupFile(group-file-prefix=")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".loadGroupFile(group-file-prefix=") 
(declare-const var2125!1 String)
(assert (= var2125!1 (str.++ var2125 ".loadGroupFile(group-file-prefix=")))
(assert true)
(define-const var779 String (append/672562846 var3857 var1392)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var3857!1 String)
(assert (= var3857!1 (str.++ var3857 var1392)))
(assert true)
(define-const var1412 String (append/672562846 var779 ", fileName=")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fileName=") 
(declare-const var779!1 String)
(assert (= var779!1 (str.++ var779 ", fileName=")))
(assert true)
(define-const var2411 String (append/672562846 var1412 var1391)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1412!1 String)
(assert (= var1412!1 (str.++ var1412 var1391)))
(assert true)
(define-const var1876 String (append/672562846 var2411 ")")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2411!1 String)
(assert (= var2411!1 (str.++ var2411 ")")))
(assert true)
(define-const var1303 String (toString/-2075883882 var1876)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2910 var1303)) ; Statement: virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>($r20) 

(declare-const var2910!1 var1405)
(declare-const var1303!1 String)
(assert true) ; Non Conditional
(define-const var1457 var1613 var1613-init) ; Statement: $r25 = new java.net.URL 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3498 var2864) ; Statement: $r21 := @caughtexception 
(assert (not (= var3498 null-var2864)))
(define-const var3729 var74 (errMgr/787585255 var3066)) ; Statement: $r23 = r3.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.misc.ErrorManager errMgr> 
(define-const var2310 var3607 var3607-CANT_LOAD_GROUP_FILE) ; Statement: $r22 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType CANT_LOAD_GROUP_FILE> 
(assert true)
;(assert (IOError/-895345567 var3729 null-var2514 var2310 (cast-from-var2864-to-var968 var3498) (cast-from-String-to-var3477 var1391))) ; Statement: virtualinvoke $r23.<org.stringtemplate.v4.misc.ErrorManager: void IOError(org.stringtemplate.v4.ST,org.stringtemplate.v4.misc.ErrorType,java.lang.Throwable,java.lang.Object)>(null, $r22, $r21, r1) 

(declare-const var3729!1 var74)
(declare-const var1208 var1054)
(declare-const var2310!1 var3607)
(declare-const var3498!1 var2864)
(declare-const var1391!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var853-to-var3477=([org.stringtemplate.v4.STGroup], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var1613-init=([], java.net.URL), errMgr/787585255=([org.stringtemplate.v4.STGroup], org.stringtemplate.v4.misc.ErrorManager), IOError/-895345567=([org.stringtemplate.v4.misc.ErrorManager, org.stringtemplate.v4.ST, org.stringtemplate.v4.misc.ErrorType, java.lang.Throwable, java.lang.Object], void), cast-from-var2864-to-var968=([java.lang.Exception], java.lang.Throwable), cast-from-String-to-var3477=([java.lang.String], java.lang.Object)}
; {var853=org.stringtemplate.v4.STGroup, var3066=r3, var1392=r9, var1054=null_type, var1391=r1, var3333=$z0, var1405=java.io.PrintStream, var465=java.lang.System, var2910=$r11, var2614=$r24, var3477=java.lang.Object, var1764=$r12, var1966=$r13, var2125=$r14, var3857=$r15, var779=$r16, var1412=$r17, var2411=$r18, var1876=$r19, var1303=$r20, var1613=java.net.URL, var1457=$r25, var2864=java.lang.Exception, var3498=$r21, var74=org.stringtemplate.v4.misc.ErrorManager, var3729=$r23, var3607=org.stringtemplate.v4.misc.ErrorType, var2310=$r22, var2514=org.stringtemplate.v4.ST, var968=java.lang.Throwable, var1208=null}
; {org.stringtemplate.v4.STGroup=var853, r3=var3066, r9=var1392, null_type=var1054, r1=var1391, $z0=var3333, java.io.PrintStream=var1405, java.lang.System=var465, $r11=var2910, $r24=var2614, java.lang.Object=var3477, $r12=var1764, $r13=var1966, $r14=var2125, $r15=var3857, $r16=var779, $r17=var1412, $r18=var2411, $r19=var1876, $r20=var1303, java.net.URL=var1613, $r25=var1457, java.lang.Exception=var2864, $r21=var3498, org.stringtemplate.v4.misc.ErrorManager=var74, $r23=var3729, org.stringtemplate.v4.misc.ErrorType=var3607, $r22=var2310, org.stringtemplate.v4.ST=var2514, java.lang.Throwable=var968, null=var1208}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.stringtemplate.v4.STGroup;	r9 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = <org.stringtemplate.v4.STGroup: boolean verbose>;	if $z0 == 0 goto $r25 = new java.net.URL;	$r11 = <java.lang.System: java.io.PrintStream out>;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r13 = virtualinvoke $r12.<java.lang.Class: java.lang.String getSimpleName()>();	$r14 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".loadGroupFile(group-file-prefix=");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fileName=");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>($r20);	$r25 = new java.net.URL;	$r21 := @caughtexception;	$r23 = r3.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.misc.ErrorManager errMgr>;	$r22 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType CANT_LOAD_GROUP_FILE>;	virtualinvoke $r23.<org.stringtemplate.v4.misc.ErrorManager: void IOError(org.stringtemplate.v4.ST,org.stringtemplate.v4.misc.ErrorType,java.lang.Throwable,java.lang.Object)>(null, $r22, $r21, r1);	return
;block_num 5