(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var631 0)
(declare-sort var115 0)
(declare-sort var1486 0)
(declare-sort var878 0)
(declare-sort var802 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun append/-1031950772 (String var802) String)
(declare-fun cast-from-var115-to-var802 (var115) var802)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1486_error/1469573001 (var1486 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var115 var115)
(declare-const var878-log var1486)
(declare-const var416 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var416 null-ClassObject)))
(declare-const var1610 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1610 null-String)))
(declare-const var2665 (Array Int ClassObject)) ; Statement: r2 := @parameter2: java.lang.Class[] 
(assert (not (= var2665 null-__Array__Int__ClassObject__)))
 ; Statement: if r0 != null goto $r3 = virtualinvoke r0.<java.lang.Class: java.lang.reflect.Method getMethod(java.lang.String,java.lang.Class[])>(r1, r2) 
(assert (not (not (= var416 null-ClassObject)))) ; Negate: Cond: r0 != null  
(declare-const var3946 var115) ; Statement: $r4 := @caughtexception 
(assert (not (= var3946 null-var115)))
(define-const var1681 var1486 var878-log) ; Statement: $r6 = <org.apache.ibatis.io.VFS: org.apache.ibatis.logging.Log log> 
(define-const var3831 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3831)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3831!1 String)
(assert (= var3831!1 ""))
(assert true)
(define-const var3064 String (append/672562846 var3831!1 "Method not found ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method not found ") 
(declare-const var3831!2 String)
(assert (= var3831!2 (str.++ var3831!1 "Method not found ")))
(assert true)
(define-const var807 String (getName/-1958580599 var416)) ; Statement: $r7 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2401 String (append/672562846 var3064 var807)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3064!1 String)
(assert (= var3064!1 (str.++ var3064 var807)))
(assert true)
(define-const var1490 String (append/672562846 var2401 ".")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2401!1 String)
(assert (= var2401!1 (str.++ var2401 ".")))
(assert true)
(define-const var2773 String (append/672562846 var1490 var1610)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1490!1 String)
(assert (= var1490!1 (str.++ var1490 var1610)))
(assert true)
(define-const var24 String (append/672562846 var2773 ".")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2773!1 String)
(assert (= var2773!1 (str.++ var2773 ".")))
(assert true)
(define-const var3594 String (append/672562846 var24 var1610)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var24!1 String)
(assert (= var24!1 (str.++ var24 var1610)))
(assert true)
(define-const var3886 String (append/672562846 var3594 ".  Cause: ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Cause: ") 
(declare-const var3594!1 String)
(assert (= var3594!1 (str.++ var3594 ".  Cause: ")))
(assert true)
(define-const var2808 String (append/-1031950772 var3886 (cast-from-var115-to-var802 var3946))) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var3886!1 String)
(assert (str.prefixof var3886 var3886!1))
(assert true)
(define-const var125 String (toString/-2075883882 var2808)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1486_error/1469573001 var1681 var125)) ; Statement: interfaceinvoke $r6.<org.apache.ibatis.logging.Log: void error(java.lang.String)>($r16) 

(declare-const var1681!1 var1486)
(declare-const var125!1 String)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var115-to-var802=([java.lang.NoSuchMethodException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1486_error/1469573001=([org.apache.ibatis.logging.Log, java.lang.String], void)}
; {var416=r0, var1610=r1, var631=null_type, var2665=r2, var115=java.lang.NoSuchMethodException, var3946=$r4, var1486=org.apache.ibatis.logging.Log, var878=org.apache.ibatis.io.VFS, var1681=$r6, var3831=$r5, var3064=$r8, var807=$r7, var2401=$r9, var1490=$r10, var2773=$r11, var24=$r12, var3594=$r13, var3886=$r14, var802=java.lang.Object, var2808=$r15, var125=$r16}
; {r0=var416, r1=var1610, null_type=var631, r2=var2665, java.lang.NoSuchMethodException=var115, $r4=var3946, org.apache.ibatis.logging.Log=var1486, org.apache.ibatis.io.VFS=var878, $r6=var1681, $r5=var3831, $r8=var3064, $r7=var807, $r9=var2401, $r10=var1490, $r11=var2773, $r12=var24, $r13=var3594, $r14=var3886, java.lang.Object=var802, $r15=var2808, $r16=var125}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.Class[];	if r0 != null goto $r3 = virtualinvoke r0.<java.lang.Class: java.lang.reflect.Method getMethod(java.lang.String,java.lang.Class[])>(r1, r2);	$r4 := @caughtexception;	$r6 = <org.apache.ibatis.io.VFS: org.apache.ibatis.logging.Log log>;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method not found ");	$r7 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Cause: ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r6.<org.apache.ibatis.logging.Log: void error(java.lang.String)>($r16);	return null
;block_num 2