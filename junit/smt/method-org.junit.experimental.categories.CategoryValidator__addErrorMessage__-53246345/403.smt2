(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var663 0)
(declare-sort var2576 0)
(declare-sort var985 0)
(declare-sort var114 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var985-init () (Array Int var985))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun cast-from-String-to-var985 (String) var985)
(declare-fun String_format/1339386452 (String (Array Int var985)) String)
(declare-fun var114-init () var114)
(declare-fun <init>/-8765015 (var114 String) void)
(declare-fun var2576_add/328494887 (var2576 var985) Bool)
(declare-fun cast-from-var114-to-var985 (var114) var985)
(declare-const null-var663 var663)
(declare-const null-var2576 var2576)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__var985__ (Array Int var985))
(declare-const var403 var663) ; Statement: r6 := @this: org.junit.experimental.categories.CategoryValidator 
(assert (not (= var403 null-var663)))
(declare-const var1124 var2576) ; Statement: r4 := @parameter0: java.util.List 
(assert (not (= var1124 null-var2576)))
(declare-const var3012 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var3012 null-ClassObject)))
(define-const var1355 (Array Int var985) arr-var985-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var3445 String (getSimpleName/-390194377 var3012)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var1355!1 (Array Int var985))
(assert (not (= var1355!1 null-__Array__Int__var985__)))
(assert (= (select var1355!1 0) (cast-from-String-to-var985 var3445))) ; Statement: $r0[0] = $r2 
(define-const var44 String (String_format/1339386452 "@%s can not be combined with @Category" var1355!1)) ; Statement: r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("@%s can not be combined with @Category", $r0) 
(define-const var3519 var114 var114-init) ; Statement: $r5 = new java.lang.Exception 
(assert true)
;(assert (<init>/-8765015 var3519 var44)) ; Statement: specialinvoke $r5.<java.lang.Exception: void <init>(java.lang.String)>(r3) 

(declare-const var3519!1 var114)
(declare-const var44!1 String)
;(assert (var2576_add/328494887 var1124 (cast-from-var114-to-var985 var3519!1))) ; Statement: interfaceinvoke r4.<java.util.List: boolean add(java.lang.Object)>($r5) 

(declare-const var1124!1 var2576)
(declare-const var3519!2 var114)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var985-init=([], java.lang.Object[]), getSimpleName/-390194377=([java.lang.Class], java.lang.String), cast-from-String-to-var985=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var114-init=([], java.lang.Exception), <init>/-8765015=([java.lang.Exception, java.lang.String], void), var2576_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var114-to-var985=([java.lang.Exception], java.lang.Object)}
; {var663=org.junit.experimental.categories.CategoryValidator, var403=r6, var2576=java.util.List, var1124=r4, var3012=r1, var985=java.lang.Object, var1355=$r0, var3445=$r2, var44=r3, var114=java.lang.Exception, var3519=$r5}
; {org.junit.experimental.categories.CategoryValidator=var663, r6=var403, java.util.List=var2576, r4=var1124, r1=var3012, java.lang.Object=var985, $r0=var1355, $r2=var3445, r3=var44, java.lang.Exception=var114, $r5=var3519}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r6 := @this: org.junit.experimental.categories.CategoryValidator;	r4 := @parameter0: java.util.List;	r1 := @parameter1: java.lang.Class;	$r0 = newarray (java.lang.Object)[1];	$r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getSimpleName()>();	$r0[0] = $r2;	r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("@%s can not be combined with @Category", $r0);	$r5 = new java.lang.Exception;	specialinvoke $r5.<java.lang.Exception: void <init>(java.lang.String)>(r3);	interfaceinvoke r4.<java.util.List: boolean add(java.lang.Object)>($r5);	return
;block_num 1