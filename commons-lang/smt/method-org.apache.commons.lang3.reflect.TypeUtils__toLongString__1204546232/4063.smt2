(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1041 0)
(declare-sort var3970 0)
(declare-sort var2274 0)
(declare-sort var1098 0)
(declare-sort var121 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3970_requireNonNull/1378936425 (var2274 String) var2274)
(declare-fun cast-from-var1041-to-var2274 (var1041) var2274)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1041_getGenericDeclaration/-1327321025 (var1041) var1098)
(declare-fun append/-1031950772 (String var2274) String)
(declare-fun cast-from-var1098-to-var2274 (var1098) var2274)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var121_typeVariableToString/-1793078242 (var1041) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1041 var1041)
(declare-const var3919 var1041) ; Statement: r0 := @parameter0: java.lang.reflect.TypeVariable 
(assert (not (= var3919 null-var1041)))
;(assert (var3970_requireNonNull/1378936425 (cast-from-var1041-to-var2274 var3919) "typeVariable")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "typeVariable") 

(declare-const var3919!1 var1041)
(declare-const var3571 String)
(define-const var3272 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3272)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3272!1 String)
(assert (= var3272!1 ""))
(define-const var3512 var1098 (var1041_getGenericDeclaration/-1327321025 var3919!1)) ; Statement: r2 = interfaceinvoke r0.<java.lang.reflect.TypeVariable: java.lang.reflect.GenericDeclaration getGenericDeclaration()>() 
(define-const var697 Bool true) ; Statement: $z0 = r2 instanceof java.lang.Class 
 ; Statement: if $z0 == 0 goto $z1 = r2 instanceof java.lang.reflect.Type 
(assert (= (ite var697 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1800 Bool true) ; Statement: $z1 = r2 instanceof java.lang.reflect.Type 
 ; Statement: if $z1 == 0 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(assert (= (ite var1800 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
;(assert (append/-1031950772 var3272!1 (cast-from-var1098-to-var2274 var3512))) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3272!2 String)
(assert (str.prefixof var3272!1 var3272!2))
(assert true) ; Non Conditional
(assert true)
(define-const var2067 String (append/-1166366385 var3272!2 58)) ; Statement: $r10 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var3272!3 String)
(assert (str.prefixof var3272!2 var3272!3))
(define-const var206 String (var121_typeVariableToString/-1793078242 var3919!1)) ; Statement: $r11 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: java.lang.String typeVariableToString(java.lang.reflect.TypeVariable)>(r0) 
(assert true)
(define-const var2860 String (append/672562846 var2067 var206)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2067!1 String)
(assert (= var2067!1 (str.++ var2067 var206)))
(assert true)
(define-const var979 String (toString/-2075883882 var2860)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var3970_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var1041-to-var2274=([java.lang.reflect.TypeVariable], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1041_getGenericDeclaration/-1327321025=([java.lang.reflect.TypeVariable], java.lang.reflect.GenericDeclaration), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1098-to-var2274=([java.lang.reflect.GenericDeclaration], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var121_typeVariableToString/-1793078242=([java.lang.reflect.TypeVariable], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1041=java.lang.reflect.TypeVariable, var3919=r0, var3970=java.util.Objects, var2274=java.lang.Object, var3571="typeVariable", var3272=$r1, var1098=java.lang.reflect.GenericDeclaration, var3512=r2, var697=$z0, var1800=$z1, var2067=$r10, var121=org.apache.commons.lang3.reflect.TypeUtils, var206=$r11, var2860=$r12, var979=$r13}
; {java.lang.reflect.TypeVariable=var1041, r0=var3919, java.util.Objects=var3970, java.lang.Object=var2274, "typeVariable"=var3571, $r1=var3272, java.lang.reflect.GenericDeclaration=var1098, r2=var3512, $z0=var697, $z1=var1800, $r10=var2067, org.apache.commons.lang3.reflect.TypeUtils=var121, $r11=var206, $r12=var2860, $r13=var979}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.reflect.TypeVariable;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "typeVariable");	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r2 = interfaceinvoke r0.<java.lang.reflect.TypeVariable: java.lang.reflect.GenericDeclaration getGenericDeclaration()>();	$z0 = r2 instanceof java.lang.Class;	if $z0 == 0 goto $z1 = r2 instanceof java.lang.reflect.Type;	$z1 = r2 instanceof java.lang.reflect.Type;	if $z1 == 0 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r10 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r11 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: java.lang.String typeVariableToString(java.lang.reflect.TypeVariable)>(r0);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 4