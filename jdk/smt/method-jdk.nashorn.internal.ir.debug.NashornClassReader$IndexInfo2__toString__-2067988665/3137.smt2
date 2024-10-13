(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1027 0)
(declare-sort var1562 0)
(declare-sort var2432 0)
(declare-sort var1089 0)
(declare-sort var1239 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-712818941 (var1562) String)
(declare-fun cast-from-var1027-to-var1562 (var1027) var1562)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun cp/-1593354951 (var1089) var2432)
(declare-fun cast-from-var1027-to-var1089 (var1027) var1089)
(declare-fun index2/-1273418777 (var1027) Int)
(declare-fun get/-1298449658 (var2432 Int) var1239)
(declare-fun cast-from-var1239-to-var1089 (var1239) var1089)
(declare-fun toString/-522406933 (var1239) String)
(declare-fun cast-from-var1089-to-var1239 (var1089) var1239)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1027 var1027)
(declare-const var3248 var1027) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo2 
(assert (not (= var3248 null-var1027)))
(define-const var1817 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1817)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1817!1 String)
(assert (= var1817!1 ""))
(assert true)
(define-const var2597 String (toString/-712818941 (cast-from-var1027-to-var1562 var3248))) ; Statement: $r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo: java.lang.String toString()>() 
(assert true)
(define-const var595 String (append/672562846 var1817!1 var2597)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1817!2 String)
(assert (= var1817!2 (str.++ var1817!1 var2597)))
(assert true)
(define-const var1345 String (append/-1166366385 var595 32)) ; Statement: $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var595!1 String)
(assert (str.prefixof var595 var595!1))
(define-const var1925 var2432 (cp/-1593354951 (cast-from-var1027-to-var1089 var3248))) ; Statement: $r4 = r1.<jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo2: java.util.ArrayList cp> 
(define-const var2933 Int (index2/-1273418777 var3248)) ; Statement: $i0 = r1.<jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo2: int index2> 
(assert true)
(define-const var3338 var1239 (get/-1298449658 var1925 var2933)) ; Statement: $r5 = virtualinvoke $r4.<java.util.ArrayList: java.lang.Object get(int)>($i0) 
(define-const var3404 var1089 (cast-from-var1239-to-var1089 var3338)) ; Statement: $r6 = (jdk.nashorn.internal.ir.debug.NashornClassReader$Constant) $r5 
(assert true)
(define-const var2225 String (toString/-522406933 (cast-from-var1089-to-var1239 var3404))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2472 String (append/672562846 var1345 var2225)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1345!1 String)
(assert (= var1345!1 (str.++ var1345 var2225)))
(assert true)
(define-const var295 String (toString/-2075883882 var2472)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-712818941=([jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo], java.lang.String), cast-from-var1027-to-var1562=([jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo2], jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), cp/-1593354951=([jdk.nashorn.internal.ir.debug.NashornClassReader$Constant], java.util.ArrayList), cast-from-var1027-to-var1089=([jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo2], jdk.nashorn.internal.ir.debug.NashornClassReader$Constant), index2/-1273418777=([jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo2], int), get/-1298449658=([java.util.ArrayList, int], java.lang.Object), cast-from-var1239-to-var1089=([java.lang.Object], jdk.nashorn.internal.ir.debug.NashornClassReader$Constant), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1089-to-var1239=([jdk.nashorn.internal.ir.debug.NashornClassReader$Constant], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1027=jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo2, var3248=r1, var1817=$r0, var1562=jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo, var2597=$r2, var595=$r3, var1345=$r8, var2432=java.util.ArrayList, var1089=jdk.nashorn.internal.ir.debug.NashornClassReader$Constant, var1925=$r4, var2933=$i0, var1239=java.lang.Object, var3338=$r5, var3404=$r6, var2225=$r7, var2472=$r9, var295=$r10}
; {jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo2=var1027, r1=var3248, $r0=var1817, jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo=var1562, $r2=var2597, $r3=var595, $r8=var1345, java.util.ArrayList=var2432, jdk.nashorn.internal.ir.debug.NashornClassReader$Constant=var1089, $r4=var1925, $i0=var2933, java.lang.Object=var1239, $r5=var3338, $r6=var3404, $r7=var2225, $r9=var2472, $r10=var295}
;seq <java.lang.StringBuilder: void <init>()>;	<jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo2;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r4 = r1.<jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo2: java.util.ArrayList cp>;	$i0 = r1.<jdk.nashorn.internal.ir.debug.NashornClassReader$IndexInfo2: int index2>;	$r5 = virtualinvoke $r4.<java.util.ArrayList: java.lang.Object get(int)>($i0);	$r6 = (jdk.nashorn.internal.ir.debug.NashornClassReader$Constant) $r5;	$r7 = virtualinvoke $r6.<java.lang.Object: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1