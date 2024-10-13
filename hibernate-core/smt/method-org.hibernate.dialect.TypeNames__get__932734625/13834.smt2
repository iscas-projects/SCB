(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var158 0)
(declare-sort var1878 0)
(declare-sort var2585 0)
(declare-sort var3428 0)
(declare-sort var22 0)
(declare-sort var211 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun defaults/-1065100384 (var158) var1878)
(declare-fun var1878_get/1088891777 (var1878 var2585) var2585)
(declare-fun cast-from-Int-to-var2585 (Int) var2585)
(declare-fun cast-from-var2585-to-String (var2585) String)
(declare-fun var22-init () var22)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var22 String) void)
(declare-fun cast-from-var22-to-var211 (var22) var211)
(declare-const null-var158 var158)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3767 var158) ; Statement: r1 := @this: org.hibernate.dialect.TypeNames 
(assert (not (= var3767 null-var158)))
(declare-const var880 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var880 null-Int)))
(define-const var1995 Int (Int_valueOf/-1371140006 var880)) ; Statement: r0 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var890 var1878 (defaults/-1065100384 var3767)) ; Statement: $r2 = r1.<org.hibernate.dialect.TypeNames: java.util.Map defaults> 
(define-const var2133 var2585 (var1878_get/1088891777 var890 (cast-from-Int-to-var2585 var1995))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0) 
(define-const var2338 String (cast-from-var2585-to-String var2133)) ; Statement: r4 = (java.lang.String) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var2338 null-String)))) ; Negate: Cond: r4 != null  
(define-const var3795 var22 var22-init) ; Statement: $r11 = new org.hibernate.MappingException 
(define-const var3183 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3183)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3183!1 String)
(assert (= var3183!1 ""))
(assert true)
(define-const var2864 String (append/672562846 var3183!1 "No Dialect mapping for JDBC type: ")) ; Statement: $r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No Dialect mapping for JDBC type: ") 
(declare-const var3183!2 String)
(assert (= var3183!2 (str.++ var3183!1 "No Dialect mapping for JDBC type: ")))
(assert true)
(define-const var3802 String (append/-1001720160 var2864 var880)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2864!1 String)
(assert (str.prefixof var2864 var2864!1))
(assert true)
(define-const var1195 String (toString/-2075883882 var3802)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var3795 var1195)) ; Statement: specialinvoke $r11.<org.hibernate.MappingException: void <init>(java.lang.String)>($r9) 

(declare-const var3795!1 var22)
(declare-const var1195!1 String)
(define-const var3837 var211 (cast-from-var22-to-var211 var3795!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), defaults/-1065100384=([org.hibernate.dialect.TypeNames], java.util.Map), var1878_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var2585=([java.lang.Integer], java.lang.Object), cast-from-var2585-to-String=([java.lang.Object], java.lang.String), var22-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var22-to-var211=([org.hibernate.MappingException], java.lang.Throwable)}
; {var158=org.hibernate.dialect.TypeNames, var3767=r1, var880=i0, var1995=r0, var1878=java.util.Map, var890=$r2, var2585=java.lang.Object, var2133=$r3, var2338=r4, var3428=null_type, var22=org.hibernate.MappingException, var3795=$r11, var3183=$r10, var2864=$r7, var3802=$r8, var1195=$r9, var211=java.lang.Throwable, var3837=$r12}
; {org.hibernate.dialect.TypeNames=var158, r1=var3767, i0=var880, r0=var1995, java.util.Map=var1878, $r2=var890, java.lang.Object=var2585, $r3=var2133, r4=var2338, null_type=var3428, org.hibernate.MappingException=var22, $r11=var3795, $r10=var3183, $r7=var2864, $r8=var3802, $r9=var1195, java.lang.Throwable=var211, $r12=var3837}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.TypeNames;	i0 := @parameter0: int;	r0 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = r1.<org.hibernate.dialect.TypeNames: java.util.Map defaults>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0);	r4 = (java.lang.String) $r3;	if r4 != null goto return r4;	$r11 = new org.hibernate.MappingException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No Dialect mapping for JDBC type: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.MappingException: void <init>(java.lang.String)>($r9);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2