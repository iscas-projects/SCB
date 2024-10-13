(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var54 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var54 var54)
(declare-const null-Int Int)
(declare-const var3951 var54) ; Statement: r0 := @this: org.hibernate.dialect.DB2Dialect 
(assert (not (= var3951 null-var54)))
(declare-const var3567 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3567 null-Int)))
 ; Statement: lookupswitch(i0) {     case 1: goto r1 = "\'x\'";     case 12: goto r1 = "\'x\'";     case 91: goto r1 = "\'2000-1-1\'";     case 92: goto r1 = "\'00:00:00\'";     case 93: goto r1 = "\'2000-1-1 00:00:00\'";     default: goto r1 = "0"; } 
(assert (and (= var3567 93) (and (not (= var3567 92)) (and (not (= var3567 91)) (and (not (= var3567 12)) (and (not (= var3567 1)) true)))))) ; Intersect: Cond: i0 == 93  and Intersect: Negate: Cond: i0 == 92   and Intersect: Negate: Cond: i0 == 91   and Intersect: Negate: Cond: i0 == 12   and Intersect: Negate: Cond: i0 == 1   and Non Conditional     
(define-const var3464 String "\u00272000-1-1 00:00:00\u0027") ; Statement: r1 = "\'2000-1-1 00:00:00\'" 
(define-const var2563 String "\u00272000-1-1 00:00:00\u0027") ; Statement: r10 = "\'2000-1-1 00:00:00\'" 
(define-const var1727 String "\u00272000-1-1 00:00:00\u0027") ; Statement: r9 = "\'2000-1-1 00:00:00\'" 
 ; Statement: goto [?= $r2 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var3055 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3055)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3055!1 String)
(assert (= var3055!1 ""))
(assert true)
(define-const var3749 String (append/672562846 var3055!1 "nullif(")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nullif(") 
(declare-const var3055!2 String)
(assert (= var3055!2 (str.++ var3055!1 "nullif(")))
(assert true)
(define-const var2693 String (append/672562846 var3749 var1727)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var3749!1 String)
(assert (= var3749!1 (str.++ var3749 var1727)))
(assert true)
(define-const var1472 String (append/672562846 var2693 ", ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2693!1 String)
(assert (= var2693!1 (str.++ var2693 ", ")))
(assert true)
(define-const var3860 String (append/672562846 var1472 var2563)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var1472!1 String)
(assert (= var1472!1 (str.++ var1472 var2563)))
(assert true)
(define-const var2386 String (append/-1166366385 var3860 41)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3860!1 String)
(assert (str.prefixof var3860 var3860!1))
(assert true)
(define-const var691 String (toString/-2075883882 var2386)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var54=org.hibernate.dialect.DB2Dialect, var3951=r0, var3567=i0, var3464=r1, var2563=r10, var1727=r9, var3055=$r2, var3749=$r3, var2693=$r4, var1472=$r5, var3860=$r6, var2386=$r7, var691=$r8}
; {org.hibernate.dialect.DB2Dialect=var54, r0=var3951, i0=var3567, r1=var3464, r10=var2563, r9=var1727, $r2=var3055, $r3=var3749, $r4=var2693, $r5=var1472, $r6=var3860, $r7=var2386, $r8=var691}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.DB2Dialect;	i0 := @parameter0: int;	lookupswitch(i0) {     case 1: goto r1 = "\'x\'";     case 12: goto r1 = "\'x\'";     case 91: goto r1 = "\'2000-1-1\'";     case 92: goto r1 = "\'00:00:00\'";     case 93: goto r1 = "\'2000-1-1 00:00:00\'";     default: goto r1 = "0"; };	r1 = "\'2000-1-1 00:00:00\'";	r10 = "\'2000-1-1 00:00:00\'";	r9 = "\'2000-1-1 00:00:00\'";	goto [?= $r2 = new java.lang.StringBuilder];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nullif(");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3