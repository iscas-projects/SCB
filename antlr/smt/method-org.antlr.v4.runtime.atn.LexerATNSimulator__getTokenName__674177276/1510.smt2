(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var479 var479)
(declare-const null-Int Int)
(declare-const var548 var479) ; Statement: r5 := @this: org.antlr.v4.runtime.atn.LexerATNSimulator 
(assert (not (= var548 null-var479)))
(declare-const var1493 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1493 null-Int)))
(define-const var322 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 != $i3 goto $r6 = new java.lang.StringBuilder 
(assert (not (= var1493 var322))) ; Cond: i0 != $i3 
(define-const var512 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var512)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var512!1 String)
(assert (= var512!1 ""))
(assert true)
(define-const var752 String (append/672562846 var512!1 "\u0027")) ; Statement: $r1 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var512!2 String)
(assert (= var512!2 (str.++ var512!1 "\u0027")))
(define-const var3345 Int (cast-from-Int-to-Int var1493)) ; Statement: $c1 = (char) i0 
(assert true)
(define-const var1952 String (append/-1166366385 var752 var3345)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var752!1 String)
(assert (str.prefixof var752 var752!1))
(assert true)
(define-const var527 String (append/672562846 var1952 "\u0027")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1952!1 String)
(assert (= var1952!1 (str.++ var1952 "\u0027")))
(assert true)
(define-const var2663 String (toString/-2075883882 var527)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var479=org.antlr.v4.runtime.atn.LexerATNSimulator, var548=r5, var1493=i0, var322=$i3, var512=$r6, var752=$r1, var3345=$c1, var1952=$r2, var527=$r3, var2663=$r4}
; {org.antlr.v4.runtime.atn.LexerATNSimulator=var479, r5=var548, i0=var1493, $i3=var322, $r6=var512, $r1=var752, $c1=var3345, $r2=var1952, $r3=var527, $r4=var2663}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.antlr.v4.runtime.atn.LexerATNSimulator;	i0 := @parameter0: int;	$i3 = (int) -1;	if i0 != $i3 goto $r6 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$c1 = (char) i0;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2