(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var280 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var3451 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3451 null-String)))
(define-const var1532 String "/region__") ; Statement: $r1 = "/region__" 
(assert true)
(define-const var1488 Int (length/-134980193 var1532)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
(assert true)
(define-const var862 Int (lastIndexOf/-618837785 var3451 "__")) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>("__") 
(assert (not (and true (and (>= var1488 0) (>= (str.len var3451) var862) (>= var862 var1488)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3451=r0, var280=null_type, var1532=$r1, var1488=$i1, var862=$i0, var2804=r2, var433=$i2, var1679=$i4, var2951=$i3, var1007=r3, var3049=$r4, var3248=$r5, var1850=$r6, var1839=$r7, var3710=$r8}
; {r0=var3451, null_type=var280, $r1=var1532, $i1=var1488, $i0=var862, r2=var2804, $i2=var433, $i4=var1679, $i3=var2951, r3=var1007, $r4=var3049, $r5=var3248, $r6=var1850, $r7=var1839, $r8=var3710}
;seq <java.lang.String: int length()>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: int lastIndexOf(java.lang.String)>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "/region__";	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>("__");	r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>($i1, $i0);	$i2 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>("__");	$i4 = $i2 + 2;	$i3 = virtualinvoke r0.<java.lang.String: int length()>();	r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>($i4, $i3);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1