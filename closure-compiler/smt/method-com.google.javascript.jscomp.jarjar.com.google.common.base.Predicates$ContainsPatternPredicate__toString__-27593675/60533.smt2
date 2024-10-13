(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2522 0)
(declare-sort var1153 0)
(declare-sort var737 0)
(declare-sort var2516 0)
(declare-sort var3052 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pattern/-1934921635 (var2522) var1153)
(declare-fun var2516_toStringHelper/-2043063914 (var3052) var737)
(declare-fun cast-from-var1153-to-var3052 (var1153) var3052)
(declare-fun pattern/755430130 (var1153) String)
(declare-fun add/173716062 (var737 String var3052) var737)
(declare-fun cast-from-String-to-var3052 (String) var3052)
(declare-fun flags/-323305155 (var1153) Int)
(declare-fun add/637451598 (var737 String Int) var737)
(declare-fun toString/-1585507728 (var737) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2522 var2522)
(declare-const var2663 var2522) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$ContainsPatternPredicate 
(assert (not (= var2663 null-var2522)))
(define-const var1342 var1153 (pattern/-1934921635 var2663)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$ContainsPatternPredicate: com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern pattern> 
(define-const var3954 var737 (var2516_toStringHelper/-2043063914 (cast-from-var1153-to-var3052 var1342))) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper toStringHelper(java.lang.Object)>($r1) 
(define-const var2507 var1153 (pattern/-1934921635 var2663)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$ContainsPatternPredicate: com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern pattern> 
(assert true)
(define-const var1294 String (pattern/755430130 var2507)) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern: java.lang.String pattern()>() 
(assert true)
(define-const var418 var737 (add/173716062 var3954 "pattern" (cast-from-String-to-var3052 var1294))) ; Statement: $r6 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper add(java.lang.String,java.lang.Object)>("pattern", $r3) 
(define-const var3872 var1153 (pattern/-1934921635 var2663)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$ContainsPatternPredicate: com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern pattern> 
(assert true)
(define-const var2220 Int (flags/-323305155 var3872)) ; Statement: $i0 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern: int flags()>() 
(assert true)
(define-const var630 var737 (add/637451598 var418 "pattern.flags" var2220)) ; Statement: $r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper add(java.lang.String,int)>("pattern.flags", $i0) 
(assert true)
(define-const var856 String (toString/-1585507728 var630)) ; Statement: r8 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: java.lang.String toString()>() 
(define-const var643 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var643)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var643!1 String)
(assert (= var643!1 ""))
(assert true)
(define-const var891 String (append/672562846 var643!1 "Predicates.contains(")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Predicates.contains(") 
(declare-const var643!2 String)
(assert (= var643!2 (str.++ var643!1 "Predicates.contains(")))
(assert true)
(define-const var2619 String (append/672562846 var891 var856)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var891!1 String)
(assert (= var891!1 (str.++ var891 var856)))
(assert true)
(define-const var3903 String (append/672562846 var2619 ")")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2619!1 String)
(assert (= var2619!1 (str.++ var2619 ")")))
(assert true)
(define-const var1099 String (toString/-2075883882 var3903)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {pattern/-1934921635=([com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$ContainsPatternPredicate], com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern), var2516_toStringHelper/-2043063914=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper), cast-from-var1153-to-var3052=([com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern], java.lang.Object), pattern/755430130=([com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern], java.lang.String), add/173716062=([com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, java.lang.String, java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper), cast-from-String-to-var3052=([java.lang.String], java.lang.Object), flags/-323305155=([com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern], int), add/637451598=([com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, java.lang.String, int], com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper), toString/-1585507728=([com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2522=com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$ContainsPatternPredicate, var2663=r0, var1153=com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern, var1342=$r1, var737=com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, var2516=com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects, var3052=java.lang.Object, var3954=$r4, var2507=$r2, var1294=$r3, var418=$r6, var3872=$r5, var2220=$i0, var630=$r7, var856=r8, var643=$r9, var891=$r10, var2619=$r11, var3903=$r12, var1099=$r13}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$ContainsPatternPredicate=var2522, r0=var2663, com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern=var1153, $r1=var1342, com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper=var737, com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects=var2516, java.lang.Object=var3052, $r4=var3954, $r2=var2507, $r3=var1294, $r6=var418, $r5=var3872, $i0=var2220, $r7=var630, r8=var856, $r9=var643, $r10=var891, $r11=var2619, $r12=var3903, $r13=var1099}
;seq <com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper toStringHelper(java.lang.Object)>;	<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$ContainsPatternPredicate;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$ContainsPatternPredicate: com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern pattern>;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper toStringHelper(java.lang.Object)>($r1);	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$ContainsPatternPredicate: com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern pattern>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern: java.lang.String pattern()>();	$r6 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper add(java.lang.String,java.lang.Object)>("pattern", $r3);	$r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$ContainsPatternPredicate: com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern pattern>;	$i0 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.base.CommonPattern: int flags()>();	$r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper add(java.lang.String,int)>("pattern.flags", $i0);	r8 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: java.lang.String toString()>();	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Predicates.contains(");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 1