(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1012 0)
(declare-sort var863 0)
(declare-sort var3523 0)
(declare-sort var246 0)
(declare-sort var2498 0)
(declare-sort var1246 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var246!class ClassObject)
(declare-fun getClass/1258963082 (var3523) ClassObject)
(declare-fun cast-from-var863-to-var3523 (var863) var3523)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMessage/849299655 (var2498) String)
(declare-fun cast-from-var863-to-var2498 (var863) var2498)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1012 var1012)
(declare-const null-var863 var863)
(declare-const null-String String)
(declare-const var2685 var1012) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Copy 
(assert (not (= var2685 null-var1012)))
(declare-const var562 var863) ; Statement: r0 := @parameter0: java.lang.Exception 
(assert (not (= var562 null-var863)))
(assert true)
(define-const var2656 ClassObject (getClass/1258963082 (cast-from-var863-to-var3523 var562))) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
 ; Statement: if $r1 != class "Ljava/io/IOException;" goto $z4 = 0 
(assert (not (not (= var2656 var246!class)))) ; Negate: Cond: $r1 != class "Ljava/io/IOException;"  
(define-const var1680 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
(define-const var2293 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= z0 = $z4] 
(assert true) ; Non Conditional
(define-const var961 Bool var1680) ; Statement: z0 = $z4 
(define-const var3224 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3224)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3224!1 String)
(assert (= var3224!1 ""))
 ; Statement: if $z3 == 0 goto $r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= (ite var2293 1 0) 0))) ; Negate: Cond: $z3 == 0  
(assert true)
(define-const var1009 String (getMessage/849299655 (cast-from-var863-to-var2498 var562))) ; Statement: $r11 = virtualinvoke r0.<java.lang.Exception: java.lang.String getMessage()>() 
 ; Statement: if $r11 != null goto $r12 = virtualinvoke r0.<java.lang.Exception: java.lang.String getMessage()>() 
(assert (not (= var1009 null-String))) ; Cond: $r11 != null 
(assert true)
(define-const var5 String (getMessage/849299655 (cast-from-var863-to-var2498 var562))) ; Statement: $r12 = virtualinvoke r0.<java.lang.Exception: java.lang.String getMessage()>() 
 ; Statement: if $r12 == null goto $r13 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (= var5 null-String)) ; Cond: $r12 == null 
(assert true)
(define-const var3779 ClassObject (getClass/1258963082 (cast-from-var863-to-var3523 var562))) ; Statement: $r13 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1973 String (getName/-1958580599 var3779)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1030 Bool (contains/1009244746 var1973 (cast-from-String-to-String "MalformedInput"))) ; Statement: $z2 = virtualinvoke $r14.<java.lang.String: boolean contains(java.lang.CharSequence)>("MalformedInput") 
 ; Statement: if $z2 == 0 goto $r16 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1030 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var2902 String (toString/-2075883882 var3224!1)) ; Statement: $r16 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var863-to-var3523=([java.lang.Exception], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var863-to-var2498=([java.lang.Exception], java.lang.Throwable), getName/-1958580599=([java.lang.Class], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1012=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Copy, var2685=r6, var863=java.lang.Exception, var562=r0, var3523=java.lang.Object, var2656=$r1, var246=java.io.IOException, var1680=$z4, var2293=$z3, var961=z0, var3224=$r2, var2498=java.lang.Throwable, var1009=$r11, var1246=null_type, var5=$r12, var3779=$r13, var1973=$r14, var1030=$z2, var2902=$r16}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Copy=var1012, r6=var2685, java.lang.Exception=var863, r0=var562, java.lang.Object=var3523, $r1=var2656, java.io.IOException=var246, $z4=var1680, $z3=var2293, z0=var961, $r2=var3224, java.lang.Throwable=var2498, $r11=var1009, null_type=var1246, $r12=var5, $r13=var3779, $r14=var1973, $z2=var1030, $r16=var2902}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Copy;	r0 := @parameter0: java.lang.Exception;	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	if $r1 != class "Ljava/io/IOException;" goto $z4 = 0;	$z4 = 1;	$z3 = 1;	goto [?= z0 = $z4];	z0 = $z4;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	if $z3 == 0 goto $r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r11 = virtualinvoke r0.<java.lang.Exception: java.lang.String getMessage()>();	if $r11 != null goto $r12 = virtualinvoke r0.<java.lang.Exception: java.lang.String getMessage()>();	$r12 = virtualinvoke r0.<java.lang.Exception: java.lang.String getMessage()>();	if $r12 == null goto $r13 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r13 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r14 = virtualinvoke $r13.<java.lang.Class: java.lang.String getName()>();	$z2 = virtualinvoke $r14.<java.lang.String: boolean contains(java.lang.CharSequence)>("MalformedInput");	if $z2 == 0 goto $r16 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 7