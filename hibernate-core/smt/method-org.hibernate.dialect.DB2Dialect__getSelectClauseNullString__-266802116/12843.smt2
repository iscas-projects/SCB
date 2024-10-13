(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2876 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2876 var2876)
(declare-const null-Int Int)
(declare-const var79 var2876) ; Statement: r0 := @this: org.hibernate.dialect.DB2Dialect 
(assert (not (= var79 null-var2876)))
(declare-const var2701 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2701 null-Int)))
 ; Statement: lookupswitch(i0) {     case 1: goto r1 = "\'x\'";     case 12: goto r1 = "\'x\'";     case 91: goto r1 = "\'2000-1-1\'";     case 92: goto r1 = "\'00:00:00\'";     case 93: goto r1 = "\'2000-1-1 00:00:00\'";     default: goto r1 = "0"; } 
(assert (and (not (= var2701 93)) (and (not (= var2701 92)) (and (not (= var2701 91)) (and (not (= var2701 12)) (and (not (= var2701 1)) true)))))) ; Intersect: Negate: Cond: i0 == 93   and Intersect: Negate: Cond: i0 == 92   and Intersect: Negate: Cond: i0 == 91   and Intersect: Negate: Cond: i0 == 12   and Intersect: Negate: Cond: i0 == 1   and Non Conditional     
(define-const var225 String "0") ; Statement: r1 = "0" 
(define-const var3835 String "0") ; Statement: r10 = "0" 
(define-const var1119 String "0") ; Statement: r9 = "0" 
(assert true) ; Non Conditional
(define-const var348 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var348)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var348!1 String)
(assert (= var348!1 ""))
(assert true)
(define-const var3243 String (append/672562846 var348!1 "nullif(")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nullif(") 
(declare-const var348!2 String)
(assert (= var348!2 (str.++ var348!1 "nullif(")))
(assert true)
(define-const var508 String (append/672562846 var3243 var1119)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var3243!1 String)
(assert (= var3243!1 (str.++ var3243 var1119)))
(assert true)
(define-const var3319 String (append/672562846 var508 ", ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var508!1 String)
(assert (= var508!1 (str.++ var508 ", ")))
(assert true)
(define-const var47 String (append/672562846 var3319 var3835)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var3319!1 String)
(assert (= var3319!1 (str.++ var3319 var3835)))
(assert true)
(define-const var2100 String (append/-1166366385 var47 41)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var47!1 String)
(assert (str.prefixof var47 var47!1))
(assert true)
(define-const var1622 String (toString/-2075883882 var2100)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2876=org.hibernate.dialect.DB2Dialect, var79=r0, var2701=i0, var225=r1, var3835=r10, var1119=r9, var348=$r2, var3243=$r3, var508=$r4, var3319=$r5, var47=$r6, var2100=$r7, var1622=$r8}
; {org.hibernate.dialect.DB2Dialect=var2876, r0=var79, i0=var2701, r1=var225, r10=var3835, r9=var1119, $r2=var348, $r3=var3243, $r4=var508, $r5=var3319, $r6=var47, $r7=var2100, $r8=var1622}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.DB2Dialect;	i0 := @parameter0: int;	lookupswitch(i0) {     case 1: goto r1 = "\'x\'";     case 12: goto r1 = "\'x\'";     case 91: goto r1 = "\'2000-1-1\'";     case 92: goto r1 = "\'00:00:00\'";     case 93: goto r1 = "\'2000-1-1 00:00:00\'";     default: goto r1 = "0"; };	r1 = "0";	r10 = "0";	r9 = "0";	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nullif(");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3