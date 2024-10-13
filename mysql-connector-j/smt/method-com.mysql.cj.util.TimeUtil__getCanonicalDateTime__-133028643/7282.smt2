(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1365 0)
(declare-sort var3443 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3443_getCanonicalDate/-21714710 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3443_getCanonicalTime/2110610283 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var997 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var997 null-String)))
(assert true)
(define-const var1236 (Array Int String) (split/-636890950 var997 "[ T]")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("[ T]") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var997 "[ T]") i) (re.++ (re.* re.all) (re.union (str.to_re " ") (str.to_re "T")) (re.* re.all))))))
(define-const var3252 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3252)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3252!1 String)
(assert (= var3252!1 ""))
(define-const var387 String (select var1236 0)) ; Statement: $r3 = r1[0] 
(define-const var2065 String (var3443_getCanonicalDate/-21714710 var387)) ; Statement: $r4 = staticinvoke <com.mysql.cj.util.TimeUtil: java.lang.String getCanonicalDate(java.lang.String)>($r3) 
(assert true)
;(assert (append/672562846 var3252!1 var2065)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3252!2 String)
(assert (= var3252!2 (str.++ var3252!1 var2065)))
(assert true)
;(assert (append/672562846 var3252!2 " ")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3252!3 String)
(assert (= var3252!3 (str.++ var3252!2 " ")))
(define-const var1270 String (select var1236 1)) ; Statement: $r5 = r1[1] 
(define-const var1345 String (var3443_getCanonicalTime/2110610283 var1270)) ; Statement: $r6 = staticinvoke <com.mysql.cj.util.TimeUtil: java.lang.String getCanonicalTime(java.lang.String)>($r5) 
(assert true)
;(assert (append/672562846 var3252!3 var1345)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3252!4 String)
(assert (= var3252!4 (str.++ var3252!3 var1345)))
(assert true)
(define-const var1150 String (toString/-2075883882 var3252!4)) ; Statement: $r7 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3443_getCanonicalDate/-21714710=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3443_getCanonicalTime/2110610283=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var997=r0, var1365=null_type, var1236=r1, var3252=$r2, var387=$r3, var3443=com.mysql.cj.util.TimeUtil, var2065=$r4, var1270=$r5, var1345=$r6, var1150=$r7}
; {r0=var997, null_type=var1365, r1=var1236, $r2=var3252, $r3=var387, com.mysql.cj.util.TimeUtil=var3443, $r4=var2065, $r5=var1270, $r6=var1345, $r7=var1150}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("[ T]");	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r1[0];	$r4 = staticinvoke <com.mysql.cj.util.TimeUtil: java.lang.String getCanonicalDate(java.lang.String)>($r3);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r5 = r1[1];	$r6 = staticinvoke <com.mysql.cj.util.TimeUtil: java.lang.String getCanonicalTime(java.lang.String)>($r5);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r7 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1