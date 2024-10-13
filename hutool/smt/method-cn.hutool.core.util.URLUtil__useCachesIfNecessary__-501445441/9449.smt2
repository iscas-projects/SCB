(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3153 0)
(declare-sort var409 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var409) ClassObject)
(declare-fun cast-from-var3153-to-var409 (var3153) var409)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun setUseCaches/-1766285499 (var3153 Bool) void)
(declare-const null-var3153 var3153)
(declare-const var2843 var3153) ; Statement: r0 := @parameter0: java.net.URLConnection 
(assert (not (= var2843 null-var3153)))
(assert true)
(define-const var2387 ClassObject (getClass/1258963082 (cast-from-var3153-to-var409 var2843))) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2229 String (getSimpleName/-390194377 var2387)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var1497 Bool (startsWith/-1785782452 var2229 "JNLP")) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean startsWith(java.lang.String)>("JNLP") 
(assert true)
;(assert (setUseCaches/-1766285499 var2843 var1497)) ; Statement: virtualinvoke r0.<java.net.URLConnection: void setUseCaches(boolean)>($z0) 

(declare-const var2843!1 var3153)
(declare-const var1497!1 Bool)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3153-to-var409=([java.net.URLConnection], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), setUseCaches/-1766285499=([java.net.URLConnection, boolean], void)}
; {var3153=java.net.URLConnection, var2843=r0, var409=java.lang.Object, var2387=$r1, var2229=$r2, var1497=$z0}
; {java.net.URLConnection=var3153, r0=var2843, java.lang.Object=var409, $r1=var2387, $r2=var2229, $z0=var1497}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.net.URLConnection;	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getSimpleName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean startsWith(java.lang.String)>("JNLP");	virtualinvoke r0.<java.net.URLConnection: void setUseCaches(boolean)>($z0);	return
;block_num 1