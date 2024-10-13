(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var74 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/20305502 (var74) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getDescriptor/-1085906438 (var74) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var74 var74)
(declare-const var1991 var74) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.FieldInfo 
(assert (not (= var1991 null-var74)))
(define-const var2172 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2172)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2172!1 String)
(assert (= var2172!1 ""))
(assert true)
(define-const var3377 String (getName/20305502 var1991)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getName()>() 
(assert true)
(define-const var37 String (append/672562846 var2172!1 var3377)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2172!2 String)
(assert (= var2172!2 (str.++ var2172!1 var3377)))
(assert true)
(define-const var1685 String (append/672562846 var37 " ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var37!1 String)
(assert (= var37!1 (str.++ var37 " ")))
(assert true)
(define-const var2836 String (getDescriptor/-1085906438 var1991)) ; Statement: $r4 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getDescriptor()>() 
(assert true)
(define-const var1832 String (append/672562846 var1685 var2836)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1685!1 String)
(assert (= var1685!1 (str.++ var1685 var2836)))
(assert true)
(define-const var1695 String (toString/-2075883882 var1832)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/20305502=([org.apache.ibatis.javassist.bytecode.FieldInfo], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getDescriptor/-1085906438=([org.apache.ibatis.javassist.bytecode.FieldInfo], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var74=org.apache.ibatis.javassist.bytecode.FieldInfo, var1991=r1, var2172=$r0, var3377=$r2, var37=$r3, var1685=$r5, var2836=$r4, var1832=$r6, var1695=$r7}
; {org.apache.ibatis.javassist.bytecode.FieldInfo=var74, r1=var1991, $r0=var2172, $r2=var3377, $r3=var37, $r5=var1685, $r4=var2836, $r6=var1832, $r7=var1695}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.FieldInfo;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r4 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getDescriptor()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1