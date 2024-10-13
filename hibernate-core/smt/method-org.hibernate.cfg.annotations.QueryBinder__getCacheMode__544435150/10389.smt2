(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var135 0)
(declare-sort var3208 0)
(declare-sort var1827 0)
(declare-sort var840 0)
(declare-sort var1090 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var1827) Int)
(declare-fun cast-from-var135-to-var1827 (var135) var1827)
(declare-fun var840-init () var840)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1090) String)
(declare-fun cast-from-var135-to-var1090 (var135) var1090)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var840 String) void)
(declare-const null-var135 var135)
(declare-const var3208-$SwitchMap$org$hibernate$annotations$CacheModeType (Array Int Int))
(declare-const var1923 var135) ; Statement: r0 := @parameter0: org.hibernate.annotations.CacheModeType 
(assert (not (= var1923 null-var135)))
(define-const var2270 (Array Int Int) var3208-$SwitchMap$org$hibernate$annotations$CacheModeType) ; Statement: $r1 = <org.hibernate.cfg.annotations.QueryBinder$1: int[] $SwitchMap$org$hibernate$annotations$CacheModeType> 
(assert true)
(define-const var1576 Int (ordinal/-291641772 (cast-from-var135-to-var1827 var1923))) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.annotations.CacheModeType: int ordinal()>() 
(define-const var3944 Int (select var2270 var1576)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r6 = <org.hibernate.CacheMode: org.hibernate.CacheMode GET>;     case 2: goto $r5 = <org.hibernate.CacheMode: org.hibernate.CacheMode IGNORE>;     case 3: goto $r4 = <org.hibernate.CacheMode: org.hibernate.CacheMode NORMAL>;     case 4: goto $r3 = <org.hibernate.CacheMode: org.hibernate.CacheMode PUT>;     case 5: goto $r2 = <org.hibernate.CacheMode: org.hibernate.CacheMode REFRESH>;     default: goto $r7 = new org.hibernate.AssertionFailure; } 
(assert (and (not (= var3944 5)) (and (not (= var3944 4)) (and (not (= var3944 3)) (and (not (= var3944 2)) (and (not (= var3944 1)) true)))))) ; Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional     
(define-const var1599 var840 var840-init) ; Statement: $r7 = new org.hibernate.AssertionFailure 
(define-const var2437 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2437)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2437!1 String)
(assert (= var2437!1 ""))
(assert true)
(define-const var3187 String (append/672562846 var2437!1 "Unknown cacheModeType: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown cacheModeType: ") 
(declare-const var2437!2 String)
(assert (= var2437!2 (str.++ var2437!1 "Unknown cacheModeType: ")))
(assert true)
(define-const var3385 String (append/-1031950772 var3187 (cast-from-var135-to-var1090 var1923))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3187!1 String)
(assert (str.prefixof var3187 var3187!1))
(assert true)
(define-const var3835 String (toString/-2075883882 var3385)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var1599 var3835)) ; Statement: specialinvoke $r7.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r11) 

(declare-const var1599!1 var840)
(declare-const var3835!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var135-to-var1827=([org.hibernate.annotations.CacheModeType], java.lang.Enum), var840-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var135-to-var1090=([org.hibernate.annotations.CacheModeType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var135=org.hibernate.annotations.CacheModeType, var1923=r0, var3208=org.hibernate.cfg.annotations.QueryBinder$1, var2270=$r1, var1827=java.lang.Enum, var1576=$i0, var3944=$i1, var840=org.hibernate.AssertionFailure, var1599=$r7, var2437=$r8, var3187=$r9, var1090=java.lang.Object, var3385=$r10, var3835=$r11}
; {org.hibernate.annotations.CacheModeType=var135, r0=var1923, org.hibernate.cfg.annotations.QueryBinder$1=var3208, $r1=var2270, java.lang.Enum=var1827, $i0=var1576, $i1=var3944, org.hibernate.AssertionFailure=var840, $r7=var1599, $r8=var2437, $r9=var3187, java.lang.Object=var1090, $r10=var3385, $r11=var3835}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.hibernate.annotations.CacheModeType;	$r1 = <org.hibernate.cfg.annotations.QueryBinder$1: int[] $SwitchMap$org$hibernate$annotations$CacheModeType>;	$i0 = virtualinvoke r0.<org.hibernate.annotations.CacheModeType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r6 = <org.hibernate.CacheMode: org.hibernate.CacheMode GET>;     case 2: goto $r5 = <org.hibernate.CacheMode: org.hibernate.CacheMode IGNORE>;     case 3: goto $r4 = <org.hibernate.CacheMode: org.hibernate.CacheMode NORMAL>;     case 4: goto $r3 = <org.hibernate.CacheMode: org.hibernate.CacheMode PUT>;     case 5: goto $r2 = <org.hibernate.CacheMode: org.hibernate.CacheMode REFRESH>;     default: goto $r7 = new org.hibernate.AssertionFailure; };	$r7 = new org.hibernate.AssertionFailure;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown cacheModeType: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r11);	throw $r7
;block_num 2