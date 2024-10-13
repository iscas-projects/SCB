(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2085 0)
(declare-sort var713 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun data/-934077959 (var2085) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2085 var2085)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1649 var2085) ; Statement: r0 := @this: org.hibernate.dialect.AbstractHANADialect$MaterializedNClob 
(assert (not (= var1649 null-var2085)))
(declare-const var2898 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var2898 null-Int)))
(declare-const var727 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var727 null-String)))
(define-const var3735 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3735)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3735!1 String)
(assert (= var3735!1 ""))
(define-const var3514 String (data/-934077959 var1649)) ; Statement: $r2 = r0.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data> 
(define-const var1181 Int (- var2898 1)) ; Statement: $l1 = l0 - 1L 
(define-const var3583 Int (cast-from-Int-to-Int var1181)) ; Statement: $i2 = (int) $l1 
(assert (and true (and (>= 0 0) (>= (str.len var3514) var3583) (>= var3583 0))))
(define-const var3907 String (substring/-1240304868 var3514 0 var3583)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i2) 
(assert true)
(define-const var3517 String (append/672562846 var3735!1 var3907)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3735!2 String)
(assert (= var3735!2 (str.++ var3735!1 var3907)))
(assert true)
(define-const var2403 String (append/672562846 var3517 var727)) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3517!1 String)
(assert (= var3517!1 (str.++ var3517 var727)))
(define-const var1936 String (data/-934077959 var1649)) ; Statement: $r6 = r0.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data> 
(define-const var1256 Int (- var2898 1)) ; Statement: $l5 = l0 - 1L 
(assert true)
(define-const var3823 Int (length/-134980193 var727)) ; Statement: $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
(define-const var711 Int (cast-from-Int-to-Int var3823)) ; Statement: $l4 = (long) $i3 
(define-const var1031 Int (+ var1256 var711)) ; Statement: $l6 = $l5 + $l4 
(define-const var2651 Int (cast-from-Int-to-Int var1031)) ; Statement: $i7 = (int) $l6 
(assert (and true (and (>= var2651 0) (>= (str.len var1936) var2651))))
(define-const var2325 String (substring/850833817 var1936 var2651)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: java.lang.String substring(int)>($i7) 
(assert true)
(define-const var621 String (append/672562846 var2403 var2325)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2403!1 String)
(assert (= var2403!1 (str.++ var2403 var2325)))
(assert true)
(define-const var3614 String (toString/-2075883882 var621)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1649!1 var2085)
(assert (not (= var1649!1 null-var2085)))
(assert (= (data/-934077959 var1649!1) var3614)) ; Statement: r0.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data> = $r10 
(assert true)
(define-const var2754 Int (length/-134980193 var727)) ; Statement: $i8 = virtualinvoke r4.<java.lang.String: int length()>() 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), data/-934077959=([org.hibernate.dialect.AbstractHANADialect$MaterializedNClob], java.lang.String), cast-from-Int-to-Int=([long], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2085=org.hibernate.dialect.AbstractHANADialect$MaterializedNClob, var1649=r0, var2898=l0, var727=r4, var713=null_type, var3735=$r1, var3514=$r2, var1181=$l1, var3583=$i2, var3907=$r3, var3517=$r5, var2403=$r8, var1936=$r6, var1256=$l5, var3823=$i3, var711=$l4, var1031=$l6, var2651=$i7, var2325=$r7, var621=$r9, var3614=$r10, var2754=$i8}
; {org.hibernate.dialect.AbstractHANADialect$MaterializedNClob=var2085, r0=var1649, l0=var2898, r4=var727, null_type=var713, $r1=var3735, $r2=var3514, $l1=var1181, $i2=var3583, $r3=var3907, $r5=var3517, $r8=var2403, $r6=var1936, $l5=var1256, $i3=var3823, $l4=var711, $l6=var1031, $i7=var2651, $r7=var2325, $r9=var621, $r10=var3614, $i8=var2754}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.AbstractHANADialect$MaterializedNClob;	l0 := @parameter0: long;	r4 := @parameter1: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = r0.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data>;	$l1 = l0 - 1L;	$i2 = (int) $l1;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i2);	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r6 = r0.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data>;	$l5 = l0 - 1L;	$i3 = virtualinvoke r4.<java.lang.String: int length()>();	$l4 = (long) $i3;	$l6 = $l5 + $l4;	$i7 = (int) $l6;	$r7 = virtualinvoke $r6.<java.lang.String: java.lang.String substring(int)>($i7);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data> = $r10;	$i8 = virtualinvoke r4.<java.lang.String: int length()>();	return $i8
;block_num 1