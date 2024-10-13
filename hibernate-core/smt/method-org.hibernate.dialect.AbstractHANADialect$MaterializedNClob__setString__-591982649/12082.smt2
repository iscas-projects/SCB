(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var647 0)
(declare-sort var3372 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun data/-934077959 (var647) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var647 var647)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var432 var647) ; Statement: r0 := @this: org.hibernate.dialect.AbstractHANADialect$MaterializedNClob 
(assert (not (= var432 null-var647)))
(declare-const var855 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var855 null-Int)))
(declare-const var2680 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var2680 null-String)))
(declare-const var1010 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var1010 null-Int)))
(declare-const var845 Int) ; Statement: i4 := @parameter3: int 
(assert (not (= var845 null-Int)))
(define-const var253 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var253)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var253!1 String)
(assert (= var253!1 ""))
(define-const var3594 String (data/-934077959 var432)) ; Statement: $r2 = r0.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data> 
(define-const var1330 Int (- var855 1)) ; Statement: $l1 = l0 - 1L 
(define-const var1786 Int (cast-from-Int-to-Int var1330)) ; Statement: $i2 = (int) $l1 
(assert (and true (and (>= 0 0) (>= (str.len var3594) var1786) (>= var1786 0))))
(define-const var2151 String (substring/-1240304868 var3594 0 var1786)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i2) 
(assert true)
(define-const var3407 String (append/672562846 var253!1 var2151)) ; Statement: $r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var253!2 String)
(assert (= var253!2 (str.++ var253!1 var2151)))
(define-const var2417 Int (+ var1010 var845)) ; Statement: $i5 = i3 + i4 
(assert (and true (and (>= var1010 0) (>= (str.len var2680) var2417) (>= var2417 var1010))))
(define-const var306 String (substring/-1240304868 var2680 var1010 var2417)) ; Statement: $r5 = virtualinvoke r4.<java.lang.String: java.lang.String substring(int,int)>(i3, $i5) 
(assert true)
(define-const var2954 String (append/672562846 var3407 var306)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3407!1 String)
(assert (= var3407!1 (str.++ var3407 var306)))
(define-const var2847 String (data/-934077959 var432)) ; Statement: $r7 = r0.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data> 
(define-const var3274 Int (- var855 1)) ; Statement: $l7 = l0 - 1L 
(define-const var1224 Int (cast-from-Int-to-Int var845)) ; Statement: $l6 = (long) i4 
(define-const var2944 Int (+ var3274 var1224)) ; Statement: $l8 = $l7 + $l6 
(define-const var1255 Int (cast-from-Int-to-Int var2944)) ; Statement: $i9 = (int) $l8 
(assert (and true (and (>= var1255 0) (>= (str.len var2847) var1255))))
(define-const var978 String (substring/850833817 var2847 var1255)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.String: java.lang.String substring(int)>($i9) 
(assert true)
(define-const var712 String (append/672562846 var2954 var978)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2954!1 String)
(assert (= var2954!1 (str.++ var2954 var978)))
(assert true)
(define-const var3885 String (toString/-2075883882 var712)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var432!1 var647)
(assert (not (= var432!1 null-var647)))
(assert (= (data/-934077959 var432!1) var3885)) ; Statement: r0.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data> = $r11 
 ; Statement: return i4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), data/-934077959=([org.hibernate.dialect.AbstractHANADialect$MaterializedNClob], java.lang.String), cast-from-Int-to-Int=([long], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), substring/850833817=([java.lang.String, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var647=org.hibernate.dialect.AbstractHANADialect$MaterializedNClob, var432=r0, var855=l0, var2680=r4, var3372=null_type, var1010=i3, var845=i4, var253=$r1, var3594=$r2, var1330=$l1, var1786=$i2, var2151=$r3, var3407=$r6, var2417=$i5, var306=$r5, var2954=$r9, var2847=$r7, var3274=$l7, var1224=$l6, var2944=$l8, var1255=$i9, var978=$r8, var712=$r10, var3885=$r11}
; {org.hibernate.dialect.AbstractHANADialect$MaterializedNClob=var647, r0=var432, l0=var855, r4=var2680, null_type=var3372, i3=var1010, i4=var845, $r1=var253, $r2=var3594, $l1=var1330, $i2=var1786, $r3=var2151, $r6=var3407, $i5=var2417, $r5=var306, $r9=var2954, $r7=var2847, $l7=var3274, $l6=var1224, $l8=var2944, $i9=var1255, $r8=var978, $r10=var712, $r11=var3885}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.AbstractHANADialect$MaterializedNClob;	l0 := @parameter0: long;	r4 := @parameter1: java.lang.String;	i3 := @parameter2: int;	i4 := @parameter3: int;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = r0.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data>;	$l1 = l0 - 1L;	$i2 = (int) $l1;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i2);	$r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$i5 = i3 + i4;	$r5 = virtualinvoke r4.<java.lang.String: java.lang.String substring(int,int)>(i3, $i5);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = r0.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data>;	$l7 = l0 - 1L;	$l6 = (long) i4;	$l8 = $l7 + $l6;	$i9 = (int) $l8;	$r8 = virtualinvoke $r7.<java.lang.String: java.lang.String substring(int)>($i9);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data> = $r11;	return i4
;block_num 1