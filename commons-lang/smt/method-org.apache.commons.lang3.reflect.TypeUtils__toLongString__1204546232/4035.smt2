(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3786 0)
(declare-sort var3991 0)
(declare-sort var3590 0)
(declare-sort var1621 0)
(declare-sort var2222 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3991_requireNonNull/1378936425 (var3590 String) var3590)
(declare-fun cast-from-var3786-to-var3590 (var3786) var3590)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3786_getGenericDeclaration/-1327321025 (var3786) var1621)
(declare-fun cast-from-var1621-to-ClassObject (var1621) ClassObject)
(declare-fun var2222_toString/367894200 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var2222_typeVariableToString/-1793078242 (var3786) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3786 var3786)
(declare-const var3996 var3786) ; Statement: r0 := @parameter0: java.lang.reflect.TypeVariable 
(assert (not (= var3996 null-var3786)))
;(assert (var3991_requireNonNull/1378936425 (cast-from-var3786-to-var3590 var3996) "typeVariable")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "typeVariable") 

(declare-const var3996!1 var3786)
(declare-const var2874 String)
(define-const var796 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var796)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var796!1 String)
(assert (= var796!1 ""))
(define-const var164 var1621 (var3786_getGenericDeclaration/-1327321025 var3996!1)) ; Statement: r2 = interfaceinvoke r0.<java.lang.reflect.TypeVariable: java.lang.reflect.GenericDeclaration getGenericDeclaration()>() 
(define-const var1413 Bool true) ; Statement: $z0 = r2 instanceof java.lang.Class 
 ; Statement: if $z0 == 0 goto $z1 = r2 instanceof java.lang.reflect.Type 
(assert (= (ite var1413 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3134 Bool true) ; Statement: $z1 = r2 instanceof java.lang.reflect.Type 
 ; Statement: if $z1 == 0 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(assert (not (= (ite var3134 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var200 ClassObject (cast-from-var1621-to-ClassObject var164)) ; Statement: $r3 = (java.lang.reflect.Type) r2 
(define-const var1712 String (var2222_toString/367894200 var200)) ; Statement: $r4 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: java.lang.String toString(java.lang.reflect.Type)>($r3) 
(assert true)
;(assert (append/672562846 var796!1 var1712)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var796!2 String)
(assert (= var796!2 (str.++ var796!1 var1712)))
 ; Statement: goto [?= $r10 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58)] 
(assert true) ; Non Conditional
(assert true)
(define-const var171 String (append/-1166366385 var796!2 58)) ; Statement: $r10 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var796!3 String)
(assert (str.prefixof var796!2 var796!3))
(define-const var3474 String (var2222_typeVariableToString/-1793078242 var3996!1)) ; Statement: $r11 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: java.lang.String typeVariableToString(java.lang.reflect.TypeVariable)>(r0) 
(assert true)
(define-const var1359 String (append/672562846 var171 var3474)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var171!1 String)
(assert (= var171!1 (str.++ var171 var3474)))
(assert true)
(define-const var2174 String (toString/-2075883882 var1359)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var3991_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var3786-to-var3590=([java.lang.reflect.TypeVariable], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3786_getGenericDeclaration/-1327321025=([java.lang.reflect.TypeVariable], java.lang.reflect.GenericDeclaration), cast-from-var1621-to-ClassObject=([java.lang.reflect.GenericDeclaration], java.lang.reflect.Type), var2222_toString/367894200=([java.lang.reflect.Type], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var2222_typeVariableToString/-1793078242=([java.lang.reflect.TypeVariable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3786=java.lang.reflect.TypeVariable, var3996=r0, var3991=java.util.Objects, var3590=java.lang.Object, var2874="typeVariable", var796=$r1, var1621=java.lang.reflect.GenericDeclaration, var164=r2, var1413=$z0, var3134=$z1, var200=$r3, var2222=org.apache.commons.lang3.reflect.TypeUtils, var1712=$r4, var171=$r10, var3474=$r11, var1359=$r12, var2174=$r13}
; {java.lang.reflect.TypeVariable=var3786, r0=var3996, java.util.Objects=var3991, java.lang.Object=var3590, "typeVariable"=var2874, $r1=var796, java.lang.reflect.GenericDeclaration=var1621, r2=var164, $z0=var1413, $z1=var3134, $r3=var200, org.apache.commons.lang3.reflect.TypeUtils=var2222, $r4=var1712, $r10=var171, $r11=var3474, $r12=var1359, $r13=var2174}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.commons.lang3.reflect.TypeUtils: java.lang.String toString(java.lang.reflect.Type)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.reflect.TypeVariable;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "typeVariable");	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r2 = interfaceinvoke r0.<java.lang.reflect.TypeVariable: java.lang.reflect.GenericDeclaration getGenericDeclaration()>();	$z0 = r2 instanceof java.lang.Class;	if $z0 == 0 goto $z1 = r2 instanceof java.lang.reflect.Type;	$z1 = r2 instanceof java.lang.reflect.Type;	if $z1 == 0 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r3 = (java.lang.reflect.Type) r2;	$r4 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: java.lang.String toString(java.lang.reflect.Type)>($r3);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	goto [?= $r10 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58)];	$r10 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r11 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: java.lang.String typeVariableToString(java.lang.reflect.TypeVariable)>(r0);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 4