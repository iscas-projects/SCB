(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1135 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1135 var1135)
(declare-const null-Int Int)
(declare-const var2015 var1135) ; Statement: r0 := @this: org.hibernate.dialect.DB2Dialect 
(assert (not (= var2015 null-var1135)))
(declare-const var3989 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3989 null-Int)))
 ; Statement: lookupswitch(i0) {     case 1: goto r1 = "\'x\'";     case 12: goto r1 = "\'x\'";     case 91: goto r1 = "\'2000-1-1\'";     case 92: goto r1 = "\'00:00:00\'";     case 93: goto r1 = "\'2000-1-1 00:00:00\'";     default: goto r1 = "0"; } 
(assert (and (= var3989 91) (and (not (= var3989 12)) (and (not (= var3989 1)) true)))) ; Intersect: Cond: i0 == 91  and Intersect: Negate: Cond: i0 == 12   and Intersect: Negate: Cond: i0 == 1   and Non Conditional   
(define-const var1423 String "\u00272000-1-1\u0027") ; Statement: r1 = "\'2000-1-1\'" 
(define-const var3217 String "\u00272000-1-1\u0027") ; Statement: r10 = "\'2000-1-1\'" 
(define-const var1843 String "\u00272000-1-1\u0027") ; Statement: r9 = "\'2000-1-1\'" 
 ; Statement: goto [?= $r2 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1348 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1348)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1348!1 String)
(assert (= var1348!1 ""))
(assert true)
(define-const var3562 String (append/672562846 var1348!1 "nullif(")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nullif(") 
(declare-const var1348!2 String)
(assert (= var1348!2 (str.++ var1348!1 "nullif(")))
(assert true)
(define-const var2602 String (append/672562846 var3562 var1843)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var3562!1 String)
(assert (= var3562!1 (str.++ var3562 var1843)))
(assert true)
(define-const var2768 String (append/672562846 var2602 ", ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2602!1 String)
(assert (= var2602!1 (str.++ var2602 ", ")))
(assert true)
(define-const var2939 String (append/672562846 var2768 var3217)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var2768!1 String)
(assert (= var2768!1 (str.++ var2768 var3217)))
(assert true)
(define-const var1902 String (append/-1166366385 var2939 41)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2939!1 String)
(assert (str.prefixof var2939 var2939!1))
(assert true)
(define-const var2020 String (toString/-2075883882 var1902)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1135=org.hibernate.dialect.DB2Dialect, var2015=r0, var3989=i0, var1423=r1, var3217=r10, var1843=r9, var1348=$r2, var3562=$r3, var2602=$r4, var2768=$r5, var2939=$r6, var1902=$r7, var2020=$r8}
; {org.hibernate.dialect.DB2Dialect=var1135, r0=var2015, i0=var3989, r1=var1423, r10=var3217, r9=var1843, $r2=var1348, $r3=var3562, $r4=var2602, $r5=var2768, $r6=var2939, $r7=var1902, $r8=var2020}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.DB2Dialect;	i0 := @parameter0: int;	lookupswitch(i0) {     case 1: goto r1 = "\'x\'";     case 12: goto r1 = "\'x\'";     case 91: goto r1 = "\'2000-1-1\'";     case 92: goto r1 = "\'00:00:00\'";     case 93: goto r1 = "\'2000-1-1 00:00:00\'";     default: goto r1 = "0"; };	r1 = "\'2000-1-1\'";	r10 = "\'2000-1-1\'";	r9 = "\'2000-1-1\'";	goto [?= $r2 = new java.lang.StringBuilder];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nullif(");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3