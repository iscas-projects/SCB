(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var10 0)
(declare-sort var1556 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun toLowerCase/1946809429 (String var1556) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-String String)
(declare-const var1556-ROOT var1556)
(declare-const var360 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var360 null-String)))
(assert true)
(define-const var864 Int (lastIndexOf/-1292097097 var360 46)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var1959 Int (+ var864 1)) ; Statement: $i1 = $i0 + 1 
(assert (and true (and (>= var1959 0) (>= (str.len var360) var1959))))
(define-const var2710 String (substring/850833817 var360 var1959)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1) 
(define-const var1097 var1556 var1556-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2956 String (toLowerCase/1946809429 var2710 var1097)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var3115 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var3392 Int (hashCode/-467973558 var2956)) ; Statement: $i2 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i2) {     case 102340: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("gif");     case 105441: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("jpg");     case 111145: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("png");     case 118807: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("xml");     case 3268712: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("jpeg");     case 3440682: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("pict");     case 3559925: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("tiff");     default: goto tableswitch(b3) {     case 0: goto return "image/jpeg";     case 1: goto return "image/jpeg";     case 2: goto return "image/gif";     case 3: goto return "image/x-pict";     case 4: goto return "image/png";     case 5: goto return "image/tiff";     case 6: goto return "text/xml";     default: goto return null; }; } 
(assert (and (not (= var3392 3559925)) (and (not (= var3392 3440682)) (and (not (= var3392 3268712)) (and (not (= var3392 118807)) (and (not (= var3392 111145)) (and (not (= var3392 105441)) (and (not (= var3392 102340)) true)))))))) ; Intersect: Negate: Cond: $i2 == 3559925   and Intersect: Negate: Cond: $i2 == 3440682   and Intersect: Negate: Cond: $i2 == 3268712   and Intersect: Negate: Cond: $i2 == 118807   and Intersect: Negate: Cond: $i2 == 111145   and Intersect: Negate: Cond: $i2 == 105441   and Intersect: Negate: Cond: $i2 == 102340   and Non Conditional       
 ; Statement: tableswitch(b3) {     case 0: goto return "image/jpeg";     case 1: goto return "image/jpeg";     case 2: goto return "image/gif";     case 3: goto return "image/x-pict";     case 4: goto return "image/png";     case 5: goto return "image/tiff";     case 6: goto return "text/xml";     default: goto return null; } 
(assert (and (= var3115 4) (and (not (= var3115 3)) (and (not (= var3115 2)) (and (not (= var3115 1)) (and (not (= var3115 0)) true)))))) ; Intersect: Cond: b3 == 4  and Intersect: Negate: Cond: b3 == 3   and Intersect: Negate: Cond: b3 == 2   and Intersect: Negate: Cond: b3 == 1   and Intersect: Negate: Cond: b3 == 0   and Non Conditional     
 ; Statement: return "image/png" 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var360=r0, var10=null_type, var864=$i0, var1959=$i1, var2710=$r2, var1556=java.util.Locale, var1097=$r1, var2956=r3, var3115=b3, var3392=$i2}
; {r0=var360, null_type=var10, $i0=var864, $i1=var1959, $r2=var2710, java.util.Locale=var1556, $r1=var1097, r3=var2956, b3=var3115, $i2=var3392}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	$i1 = $i0 + 1;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	$r1 = <java.util.Locale: java.util.Locale ROOT>;	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	b3 = -1;	$i2 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i2) {     case 102340: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("gif");     case 105441: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("jpg");     case 111145: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("png");     case 118807: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("xml");     case 3268712: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("jpeg");     case 3440682: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("pict");     case 3559925: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("tiff");     default: goto tableswitch(b3) {     case 0: goto return "image/jpeg";     case 1: goto return "image/jpeg";     case 2: goto return "image/gif";     case 3: goto return "image/x-pict";     case 4: goto return "image/png";     case 5: goto return "image/tiff";     case 6: goto return "text/xml";     default: goto return null; }; };	tableswitch(b3) {     case 0: goto return "image/jpeg";     case 1: goto return "image/jpeg";     case 2: goto return "image/gif";     case 3: goto return "image/x-pict";     case 4: goto return "image/png";     case 5: goto return "image/tiff";     case 6: goto return "text/xml";     default: goto return null; };	return "image/png"
;block_num 3