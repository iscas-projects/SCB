(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1011 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isArray/1369458484 (ClassObject) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getComponentType/1960034130 (ClassObject) ClassObject)
(declare-fun var1011_toString/367894200 (ClassObject) String)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-ClassObject ClassObject)
(declare-const var2461 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2461 null-ClassObject)))
(assert true)
(define-const var1217 Bool (isArray/1369458484 var2461)) ; Statement: $z0 = virtualinvoke r0.<java.lang.Class: boolean isArray()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= (ite var1217 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var578 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var578)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var578!1 String)
(assert (= var578!1 ""))
(assert true)
(define-const var244 ClassObject (getComponentType/1960034130 var2461)) ; Statement: $r13 = virtualinvoke r0.<java.lang.Class: java.lang.Class getComponentType()>() 
(define-const var3522 String (var1011_toString/367894200 (cast-from-ClassObject-to-ClassObject var244))) ; Statement: $r14 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: java.lang.String toString(java.lang.reflect.Type)>($r13) 
(assert true)
(define-const var3411 String (append/672562846 var578!1 var3522)) ; Statement: $r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var578!2 String)
(assert (= var578!2 (str.++ var578!1 var3522)))
(assert true)
(define-const var661 String (append/672562846 var3411 "[]")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[]") 
(declare-const var3411!1 String)
(assert (= var3411!1 (str.++ var3411 "[]")))
(assert true)
(define-const var1160 String (toString/-2075883882 var661)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {isArray/1369458484=([java.lang.Class], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getComponentType/1960034130=([java.lang.Class], java.lang.Class), var1011_toString/367894200=([java.lang.reflect.Type], java.lang.String), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2461=r0, var1217=$z0, var578=$r12, var244=$r13, var1011=org.apache.commons.lang3.reflect.TypeUtils, var3522=$r14, var3411=$r15, var661=$r16, var1160=$r17}
; {r0=var2461, $z0=var1217, $r12=var578, $r13=var244, org.apache.commons.lang3.reflect.TypeUtils=var1011, $r14=var3522, $r15=var3411, $r16=var661, $r17=var1160}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.commons.lang3.reflect.TypeUtils: java.lang.String toString(java.lang.reflect.Type)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	$z0 = virtualinvoke r0.<java.lang.Class: boolean isArray()>();	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke r0.<java.lang.Class: java.lang.Class getComponentType()>();	$r14 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: java.lang.String toString(java.lang.reflect.Type)>($r13);	$r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[]");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 2