(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1925 0)
(declare-sort var240 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1925 var1925)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3945 var1925) ; Statement: r9 := @this: org.hibernate.dialect.identity.PostgreSQL10IdentityColumnSupport 
(assert (not (= var3945 null-var1925)))
(declare-const var1971 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1971 null-String)))
(declare-const var649 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var649 null-String)))
(declare-const var3700 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3700 null-Int)))
(define-const var1258 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1258)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1258!1 String)
(assert (= var1258!1 ""))
(assert true)
(define-const var1848 String (append/672562846 var1258!1 "select currval(\u0027")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select currval(\'") 
(declare-const var1258!2 String)
(assert (= var1258!2 (str.++ var1258!1 "select currval(\u0027")))
(assert true)
(define-const var3640 String (append/672562846 var1848 var1971)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1848!1 String)
(assert (= var1848!1 (str.++ var1848 var1971)))
(assert true)
(define-const var724 String (append/-1166366385 var3640 95)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95) 
(declare-const var3640!1 String)
(assert (str.prefixof var3640 var3640!1))
(assert true)
(define-const var3531 String (append/672562846 var724 var649)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var724!1 String)
(assert (= var724!1 (str.++ var724 var649)))
(assert true)
(define-const var2668 String (append/672562846 var3531 "_seq\u0027)")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_seq\')") 
(declare-const var3531!1 String)
(assert (= var3531!1 (str.++ var3531 "_seq\u0027)")))
(assert true)
(define-const var1081 String (toString/-2075883882 var2668)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1925=org.hibernate.dialect.identity.PostgreSQL10IdentityColumnSupport, var3945=r9, var1971=r1, var240=null_type, var649=r4, var3700=i0, var1258=$r0, var1848=$r2, var3640=$r3, var724=$r5, var3531=$r6, var2668=$r7, var1081=$r8}
; {org.hibernate.dialect.identity.PostgreSQL10IdentityColumnSupport=var1925, r9=var3945, r1=var1971, null_type=var240, r4=var649, i0=var3700, $r0=var1258, $r2=var1848, $r3=var3640, $r5=var724, $r6=var3531, $r7=var2668, $r8=var1081}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.dialect.identity.PostgreSQL10IdentityColumnSupport;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	i0 := @parameter2: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select currval(\'");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_seq\')");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1