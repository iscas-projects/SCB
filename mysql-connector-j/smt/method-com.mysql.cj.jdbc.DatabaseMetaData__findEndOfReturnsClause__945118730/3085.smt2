(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3062 0)
(declare-sort var1633 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun quotedId/1074764847 (var3062) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-String-init () (Array Int String))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var3062 var3062)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2768 var3062) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var2768 null-var3062)))
(declare-const var2726 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var2726 null-String)))
(declare-const var1365 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1365 null-Int)))
(define-const var3229 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3229)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3229!1 String)
(assert (= var3229!1 ""))
(define-const var3366 String (quotedId/1074764847 var2768)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String quotedId> 
(assert true)
(define-const var2248 String (append/672562846 var3229!1 var3366)) ; Statement: $r3 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3229!2 String)
(assert (= var3229!2 (str.++ var3229!1 var3366)))
(assert true)
(define-const var3638 String (append/672562846 var2248 "(")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var2248!1 String)
(assert (= var2248!1 (str.++ var2248 "(")))
(assert true)
(define-const var2379 String (toString/-2075883882 var3638)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1422 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1422)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1422!1 String)
(assert (= var1422!1 ""))
(define-const var109 String (quotedId/1074764847 var2768)) ; Statement: $r7 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String quotedId> 
(assert true)
(define-const var2950 String (append/672562846 var1422!1 var109)) ; Statement: $r8 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1422!2 String)
(assert (= var1422!2 (str.++ var1422!1 var109)))
(assert true)
(define-const var3483 String (append/672562846 var2950 ")")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2950!1 String)
(assert (= var2950!1 (str.++ var2950 ")")))
(assert true)
(define-const var3799 String (toString/-2075883882 var3483)) ; Statement: r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2047 (Array Int String) arr-String-init) ; Statement: $r11 = newarray (java.lang.String)[11] 
(declare-const var2047!1 (Array Int String))
(assert (not (= var2047!1 null-__Array__Int__String__)))
(assert (= (select var2047!1 0) "LANGUAGE")) ; Statement: $r11[0] = "LANGUAGE" 
(declare-const var2047!2 (Array Int String))
(assert (not (= var2047!2 null-__Array__Int__String__)))
(assert (= (select var2047!2 1) "NOT")) ; Statement: $r11[1] = "NOT" 
(declare-const var2047!3 (Array Int String))
(assert (not (= var2047!3 null-__Array__Int__String__)))
(assert (= (select var2047!3 2) "DETERMINISTIC")) ; Statement: $r11[2] = "DETERMINISTIC" 
(declare-const var2047!4 (Array Int String))
(assert (not (= var2047!4 null-__Array__Int__String__)))
(assert (= (select var2047!4 3) "CONTAINS")) ; Statement: $r11[3] = "CONTAINS" 
(declare-const var2047!5 (Array Int String))
(assert (not (= var2047!5 null-__Array__Int__String__)))
(assert (= (select var2047!5 4) "NO")) ; Statement: $r11[4] = "NO" 
(declare-const var2047!6 (Array Int String))
(assert (not (= var2047!6 null-__Array__Int__String__)))
(assert (= (select var2047!6 5) "READ")) ; Statement: $r11[5] = "READ" 
(declare-const var2047!7 (Array Int String))
(assert (not (= var2047!7 null-__Array__Int__String__)))
(assert (= (select var2047!7 6) "MODIFIES")) ; Statement: $r11[6] = "MODIFIES" 
(declare-const var2047!8 (Array Int String))
(assert (not (= var2047!8 null-__Array__Int__String__)))
(assert (= (select var2047!8 7) "SQL")) ; Statement: $r11[7] = "SQL" 
(declare-const var2047!9 (Array Int String))
(assert (not (= var2047!9 null-__Array__Int__String__)))
(assert (= (select var2047!9 8) "COMMENT")) ; Statement: $r11[8] = "COMMENT" 
(declare-const var2047!10 (Array Int String))
(assert (not (= var2047!10 null-__Array__Int__String__)))
(assert (= (select var2047!10 9) "BEGIN")) ; Statement: $r11[9] = "BEGIN" 
(declare-const var2047!11 (Array Int String))
(assert (not (= var2047!11 null-__Array__Int__String__)))
(assert (= (select var2047!11 10) "RETURN")) ; Statement: $r11[10] = "RETURN" 
(define-const var41 String "RETURNS") ; Statement: $r12 = "RETURNS" 
(assert true)
(define-const var1132 Int (length/-134980193 var41)) ; Statement: $i1 = virtualinvoke $r12.<java.lang.String: int length()>() 
(define-const var3990 Int (+ var1365 var1132)) ; Statement: $i2 = i0 + $i1 
(define-const var3907 Int (+ var3990 1)) ; Statement: i3 = $i2 + 1 
(define-const var3589 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
(define-const var1482 Int var3589) ; Statement: i8 = $i12 
(define-const var1023 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
(define-const var3616 Int (getLength-Arr-String-1 var2047!11)) ; Statement: $i4 = lengthof $r11 
 ; Statement: if i9 >= $i4 goto $i18 = (int) -1 
(assert (>= var1023 var3616)) ; Cond: i9 >= $i4 
(define-const var3123 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i18 = (int) -1 
 ; Statement: if i8 == $i18 goto $r14 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.NativeSession session> 
(assert (not (= var1482 var3123))) ; Negate: Cond: i8 == $i18  
 ; Statement: return i8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), quotedId/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-String-init=([], java.lang.String[]), length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], int), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var3062=com.mysql.cj.jdbc.DatabaseMetaData, var2768=r1, var2726=r13, var1633=null_type, var1365=i0, var3229=$r24, var3366=$r2, var2248=$r3, var3638=$r4, var2379=r5, var1422=$r25, var109=$r7, var2950=$r8, var3483=$r9, var3799=r10, var2047=$r11, var41=$r12, var1132=$i1, var3990=$i2, var3907=i3, var3589=$i12, var1482=i8, var1023=i9, var3616=$i4, var3123=$i18}
; {com.mysql.cj.jdbc.DatabaseMetaData=var3062, r1=var2768, r13=var2726, null_type=var1633, i0=var1365, $r24=var3229, $r2=var3366, $r3=var2248, $r4=var3638, r5=var2379, $r25=var1422, $r7=var109, $r8=var2950, $r9=var3483, r10=var3799, $r11=var2047, $r12=var41, $i1=var1132, $i2=var3990, i3=var3907, $i12=var3589, i8=var1482, i9=var1023, $i4=var3616, $i18=var3123}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r13 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String quotedId>;	$r3 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r7 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String quotedId>;	$r8 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = newarray (java.lang.String)[11];	$r11[0] = "LANGUAGE";	$r11[1] = "NOT";	$r11[2] = "DETERMINISTIC";	$r11[3] = "CONTAINS";	$r11[4] = "NO";	$r11[5] = "READ";	$r11[6] = "MODIFIES";	$r11[7] = "SQL";	$r11[8] = "COMMENT";	$r11[9] = "BEGIN";	$r11[10] = "RETURN";	$r12 = "RETURNS";	$i1 = virtualinvoke $r12.<java.lang.String: int length()>();	$i2 = i0 + $i1;	i3 = $i2 + 1;	$i12 = (int) -1;	i8 = $i12;	i9 = 0;	$i4 = lengthof $r11;	if i9 >= $i4 goto $i18 = (int) -1;	$i18 = (int) -1;	if i8 == $i18 goto $r14 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.NativeSession session>;	return i8
;block_num 4