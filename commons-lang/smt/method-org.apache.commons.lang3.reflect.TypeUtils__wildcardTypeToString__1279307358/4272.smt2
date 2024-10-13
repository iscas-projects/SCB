(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var349 0)
(declare-sort var906 0)
(declare-sort var3603 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var349_getLowerBounds/-1189759399 (var349) (Array Int ClassObject))
(declare-fun var349_getUpperBounds/1653165528 (var349) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var906_appendAllTo/-1343076024 (String String (Array Int var3603)) String)
(declare-fun cast-from-__Array__Int__ClassObject__-to-__Array__Int__var3603__ ((Array Int ClassObject)) (Array Int var3603))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var349 var349)
(declare-const var3941 var349) ; Statement: r2 := @parameter0: java.lang.reflect.WildcardType 
(assert (not (= var3941 null-var349)))
(define-const var0 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var0)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var0!1 String)
(assert (= var0!1 ""))
(assert true)
(define-const var406 String (append/-1166366385 var0!1 63)) ; Statement: r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(63) 
(declare-const var0!2 String)
(assert (str.prefixof var0!1 var0!2))
(define-const var1814 (Array Int ClassObject) (var349_getLowerBounds/-1189759399 var3941)) ; Statement: r3 = interfaceinvoke r2.<java.lang.reflect.WildcardType: java.lang.reflect.Type[] getLowerBounds()>() 
(define-const var1441 (Array Int ClassObject) (var349_getUpperBounds/1653165528 var3941)) ; Statement: r4 = interfaceinvoke r2.<java.lang.reflect.WildcardType: java.lang.reflect.Type[] getUpperBounds()>() 
(define-const var2154 Int (getLength-Arr-ClassObject-1 var1814)) ; Statement: $i0 = lengthof r3 
 ; Statement: if $i0 > 1 goto $r5 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" super ") 
(assert (> var2154 1)) ; Cond: $i0 > 1 
(assert true)
(define-const var229 String (append/672562846 var406 " super ")) ; Statement: $r5 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" super ") 
(declare-const var406!1 String)
(assert (= var406!1 (str.++ var406 " super ")))
;(assert (var906_appendAllTo/-1343076024 var229 " & " (cast-from-__Array__Int__ClassObject__-to-__Array__Int__var3603__ var1814))) ; Statement: staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: java.lang.StringBuilder appendAllTo(java.lang.StringBuilder,java.lang.String,java.lang.Object[])>($r5, " & ", r3) 

(declare-const var229!1 String)
(declare-const var3828 String)
(declare-const var1814!1 (Array Int ClassObject))
 ; Statement: goto [?= $r10 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var175 String (toString/-2075883882 var406!1)) ; Statement: $r10 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var349_getLowerBounds/-1189759399=([java.lang.reflect.WildcardType], java.lang.reflect.Type[]), var349_getUpperBounds/1653165528=([java.lang.reflect.WildcardType], java.lang.reflect.Type[]), getLength-Arr-ClassObject-1=([java.lang.reflect.Type[]], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var906_appendAllTo/-1343076024=([java.lang.StringBuilder, java.lang.String, java.lang.Object[]], java.lang.StringBuilder), cast-from-__Array__Int__ClassObject__-to-__Array__Int__var3603__=([java.lang.reflect.Type[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var349=java.lang.reflect.WildcardType, var3941=r2, var0=$r0, var406=r1, var1814=r3, var1441=r4, var2154=$i0, var229=$r5, var906=org.apache.commons.lang3.reflect.TypeUtils, var3603=java.lang.Object, var3828=" & ", var175=$r10}
; {java.lang.reflect.WildcardType=var349, r2=var3941, $r0=var0, r1=var406, r3=var1814, r4=var1441, $i0=var2154, $r5=var229, org.apache.commons.lang3.reflect.TypeUtils=var906, java.lang.Object=var3603, " & "=var3828, $r10=var175}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.reflect.WildcardType;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(63);	r3 = interfaceinvoke r2.<java.lang.reflect.WildcardType: java.lang.reflect.Type[] getLowerBounds()>();	r4 = interfaceinvoke r2.<java.lang.reflect.WildcardType: java.lang.reflect.Type[] getUpperBounds()>();	$i0 = lengthof r3;	if $i0 > 1 goto $r5 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" super ");	$r5 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" super ");	staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: java.lang.StringBuilder appendAllTo(java.lang.StringBuilder,java.lang.String,java.lang.Object[])>($r5, " & ", r3);	goto [?= $r10 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>()];	$r10 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3