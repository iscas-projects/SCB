(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1874 0)
(declare-sort var1487 0)
(declare-sort var1040 0)
(declare-sort var3768 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1874_get/1088891777 (var1874 var1040) var1040)
(declare-fun cast-from-Int-to-var1040 (Int) var1040)
(declare-fun cast-from-var1040-to-String (var1040) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1040) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var1487-JDBC_TYPE_MAP var1874)
(declare-const null-String String)
(declare-const var3909 Int) ; Statement: r0 := @parameter0: java.lang.Integer 
(assert (not (= var3909 null-Int)))
(define-const var1570 var1874 var1487-JDBC_TYPE_MAP) ; Statement: $r1 = <org.hibernate.type.descriptor.JdbcTypeNameMapper: java.util.Map JDBC_TYPE_MAP> 
(define-const var590 var1040 (var1874_get/1088891777 var1570 (cast-from-Int-to-var1040 var3909))) ; Statement: $r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0) 
(define-const var1258 String (cast-from-var1040-to-String var590)) ; Statement: r3 = (java.lang.String) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var1258 null-String)))) ; Negate: Cond: r3 != null  
(define-const var2150 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2150)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2150!1 String)
(assert (= var2150!1 ""))
(assert true)
(define-const var2763 String (append/672562846 var2150!1 "UNKNOWN(")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UNKNOWN(") 
(declare-const var2150!2 String)
(assert (= var2150!2 (str.++ var2150!1 "UNKNOWN(")))
(assert true)
(define-const var2488 String (append/-1031950772 var2763 (cast-from-Int-to-var1040 var3909))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2763!1 String)
(assert (str.prefixof var2763 var2763!1))
(assert true)
(define-const var1386 String (append/672562846 var2488 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2488!1 String)
(assert (= var2488!1 (str.++ var2488 ")")))
(assert true)
(define-const var1632 String (toString/-2075883882 var1386)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1874_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var1040=([java.lang.Integer], java.lang.Object), cast-from-var1040-to-String=([java.lang.Object], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3909=r0, var1874=java.util.Map, var1487=org.hibernate.type.descriptor.JdbcTypeNameMapper, var1570=$r1, var1040=java.lang.Object, var590=$r2, var1258=r3, var3768=null_type, var2150=$r4, var2763=$r5, var2488=$r6, var1386=$r7, var1632=$r8}
; {r0=var3909, java.util.Map=var1874, org.hibernate.type.descriptor.JdbcTypeNameMapper=var1487, $r1=var1570, java.lang.Object=var1040, $r2=var590, r3=var1258, null_type=var3768, $r4=var2150, $r5=var2763, $r6=var2488, $r7=var1386, $r8=var1632}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Integer;	$r1 = <org.hibernate.type.descriptor.JdbcTypeNameMapper: java.util.Map JDBC_TYPE_MAP>;	$r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0);	r3 = (java.lang.String) $r2;	if r3 != null goto return r3;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UNKNOWN(");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2