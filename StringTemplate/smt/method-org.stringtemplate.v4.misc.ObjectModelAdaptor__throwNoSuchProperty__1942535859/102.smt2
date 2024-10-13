(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var420 0)
(declare-sort var826 0)
(declare-sort var776 0)
(declare-sort var1042 0)
(declare-sort var2248 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1042-init () var1042)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1705997776 (var1042 var776 var2248 String) void)
(declare-const null-var420 var420)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var776 var776)
(declare-const null-NullType var826)
(declare-const null-var2248 var2248)
(declare-const var308 var420) ; Statement: r10 := @this: org.stringtemplate.v4.misc.ObjectModelAdaptor 
(assert (not (= var308 null-var420)))
(declare-const var3214 ClassObject) ; Statement: r3 := @parameter0: java.lang.Class 
(assert (not (= var3214 null-ClassObject)))
(declare-const var2181 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var2181 null-String)))
(declare-const var1302 var776) ; Statement: r1 := @parameter2: java.lang.Exception 
(assert (not (= var1302 null-var776)))
(define-const var2884 var1042 var1042-init) ; Statement: $r0 = new org.stringtemplate.v4.misc.STNoSuchPropertyException 
(define-const var3044 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3044)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3044!1 String)
(assert (= var3044!1 ""))
(assert true)
(define-const var3282 String (getName/-1958580599 var3214)) ; Statement: $r4 = virtualinvoke r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3684 String (append/672562846 var3044!1 var3282)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3044!2 String)
(assert (= var3044!2 (str.++ var3044!1 var3282)))
(assert true)
(define-const var3309 String (append/672562846 var3684 ".")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3684!1 String)
(assert (= var3684!1 (str.++ var3684 ".")))
(assert true)
(define-const var3946 String (append/672562846 var3309 var2181)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var3309!1 String)
(assert (= var3309!1 (str.++ var3309 var2181)))
(assert true)
(define-const var1864 String (toString/-2075883882 var3946)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1705997776 var2884 var1302 null-var2248 var1864)) ; Statement: specialinvoke $r0.<org.stringtemplate.v4.misc.STNoSuchPropertyException: void <init>(java.lang.Exception,java.lang.Object,java.lang.String)>(r1, null, $r9) 

(declare-const var2884!1 var1042)
(declare-const var1302!1 var776)
(declare-const var2981 var826)
(declare-const var1864!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1042-init=([], org.stringtemplate.v4.misc.STNoSuchPropertyException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1705997776=([org.stringtemplate.v4.misc.STNoSuchPropertyException, java.lang.Exception, java.lang.Object, java.lang.String], void)}
; {var420=org.stringtemplate.v4.misc.ObjectModelAdaptor, var308=r10, var3214=r3, var2181=r6, var826=null_type, var776=java.lang.Exception, var1302=r1, var1042=org.stringtemplate.v4.misc.STNoSuchPropertyException, var2884=$r0, var3044=$r2, var3282=$r4, var3684=$r5, var3309=$r7, var3946=$r8, var1864=$r9, var2248=java.lang.Object, var2981=null}
; {org.stringtemplate.v4.misc.ObjectModelAdaptor=var420, r10=var308, r3=var3214, r6=var2181, null_type=var826, java.lang.Exception=var776, r1=var1302, org.stringtemplate.v4.misc.STNoSuchPropertyException=var1042, $r0=var2884, $r2=var3044, $r4=var3282, $r5=var3684, $r7=var3309, $r8=var3946, $r9=var1864, java.lang.Object=var2248, null=var2981}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.stringtemplate.v4.misc.ObjectModelAdaptor;	r3 := @parameter0: java.lang.Class;	r6 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.Exception;	$r0 = new org.stringtemplate.v4.misc.STNoSuchPropertyException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke r3.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<org.stringtemplate.v4.misc.STNoSuchPropertyException: void <init>(java.lang.Exception,java.lang.Object,java.lang.String)>(r1, null, $r9);	throw $r0
;block_num 1