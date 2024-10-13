(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var705 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var705 var705)
(declare-const null-Int Int)
(declare-const var3000 var705) ; Statement: r0 := @this: org.hibernate.dialect.DB2Dialect 
(assert (not (= var3000 null-var705)))
(declare-const var2665 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2665 null-Int)))
 ; Statement: lookupswitch(i0) {     case 1: goto r1 = "\'x\'";     case 12: goto r1 = "\'x\'";     case 91: goto r1 = "\'2000-1-1\'";     case 92: goto r1 = "\'00:00:00\'";     case 93: goto r1 = "\'2000-1-1 00:00:00\'";     default: goto r1 = "0"; } 
(assert (and (= var2665 92) (and (not (= var2665 91)) (and (not (= var2665 12)) (and (not (= var2665 1)) true))))) ; Intersect: Cond: i0 == 92  and Intersect: Negate: Cond: i0 == 91   and Intersect: Negate: Cond: i0 == 12   and Intersect: Negate: Cond: i0 == 1   and Non Conditional    
(define-const var2056 String "\u002700:00:00\u0027") ; Statement: r1 = "\'00:00:00\'" 
(define-const var2824 String "\u002700:00:00\u0027") ; Statement: r10 = "\'00:00:00\'" 
(define-const var838 String "\u002700:00:00\u0027") ; Statement: r9 = "\'00:00:00\'" 
 ; Statement: goto [?= $r2 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var2881 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2881)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2881!1 String)
(assert (= var2881!1 ""))
(assert true)
(define-const var590 String (append/672562846 var2881!1 "nullif(")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nullif(") 
(declare-const var2881!2 String)
(assert (= var2881!2 (str.++ var2881!1 "nullif(")))
(assert true)
(define-const var3119 String (append/672562846 var590 var838)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var590!1 String)
(assert (= var590!1 (str.++ var590 var838)))
(assert true)
(define-const var1831 String (append/672562846 var3119 ", ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var3119!1 String)
(assert (= var3119!1 (str.++ var3119 ", ")))
(assert true)
(define-const var1592 String (append/672562846 var1831 var2824)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var1831!1 String)
(assert (= var1831!1 (str.++ var1831 var2824)))
(assert true)
(define-const var3155 String (append/-1166366385 var1592 41)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1592!1 String)
(assert (str.prefixof var1592 var1592!1))
(assert true)
(define-const var2526 String (toString/-2075883882 var3155)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var705=org.hibernate.dialect.DB2Dialect, var3000=r0, var2665=i0, var2056=r1, var2824=r10, var838=r9, var2881=$r2, var590=$r3, var3119=$r4, var1831=$r5, var1592=$r6, var3155=$r7, var2526=$r8}
; {org.hibernate.dialect.DB2Dialect=var705, r0=var3000, i0=var2665, r1=var2056, r10=var2824, r9=var838, $r2=var2881, $r3=var590, $r4=var3119, $r5=var1831, $r6=var1592, $r7=var3155, $r8=var2526}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.DB2Dialect;	i0 := @parameter0: int;	lookupswitch(i0) {     case 1: goto r1 = "\'x\'";     case 12: goto r1 = "\'x\'";     case 91: goto r1 = "\'2000-1-1\'";     case 92: goto r1 = "\'00:00:00\'";     case 93: goto r1 = "\'2000-1-1 00:00:00\'";     default: goto r1 = "0"; };	r1 = "\'00:00:00\'";	r10 = "\'00:00:00\'";	r9 = "\'00:00:00\'";	goto [?= $r2 = new java.lang.StringBuilder];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nullif(");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3