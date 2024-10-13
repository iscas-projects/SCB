(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var500 0)
(declare-sort var1855 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun toLowerCase/1946809429 (String var1855) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-String String)
(declare-const var1855-ROOT var1855)
(declare-const var1475 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1475 null-String)))
(assert true)
(define-const var1454 Int (lastIndexOf/-1292097097 var1475 46)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var2154 Int (+ var1454 1)) ; Statement: $i1 = $i0 + 1 
(assert (and true (and (>= var2154 0) (>= (str.len var1475) var2154))))
(define-const var693 String (substring/850833817 var1475 var2154)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1) 
(define-const var541 var1855 var1855-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2738 String (toLowerCase/1946809429 var693 var541)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var794 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var48 Int (hashCode/-467973558 var2738)) ; Statement: $i2 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i2) {     case 102340: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("gif");     case 105441: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("jpg");     case 111145: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("png");     case 118807: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("xml");     case 3268712: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("jpeg");     case 3440682: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("pict");     case 3559925: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("tiff");     default: goto tableswitch(b3) {     case 0: goto return "image/jpeg";     case 1: goto return "image/jpeg";     case 2: goto return "image/gif";     case 3: goto return "image/x-pict";     case 4: goto return "image/png";     case 5: goto return "image/tiff";     case 6: goto return "text/xml";     default: goto return null; }; } 
(assert (and (not (= var48 3559925)) (and (not (= var48 3440682)) (and (not (= var48 3268712)) (and (not (= var48 118807)) (and (not (= var48 111145)) (and (not (= var48 105441)) (and (not (= var48 102340)) true)))))))) ; Intersect: Negate: Cond: $i2 == 3559925   and Intersect: Negate: Cond: $i2 == 3440682   and Intersect: Negate: Cond: $i2 == 3268712   and Intersect: Negate: Cond: $i2 == 118807   and Intersect: Negate: Cond: $i2 == 111145   and Intersect: Negate: Cond: $i2 == 105441   and Intersect: Negate: Cond: $i2 == 102340   and Non Conditional       
 ; Statement: tableswitch(b3) {     case 0: goto return "image/jpeg";     case 1: goto return "image/jpeg";     case 2: goto return "image/gif";     case 3: goto return "image/x-pict";     case 4: goto return "image/png";     case 5: goto return "image/tiff";     case 6: goto return "text/xml";     default: goto return null; } 
(assert (and (= var794 6) (and (not (= var794 5)) (and (not (= var794 4)) (and (not (= var794 3)) (and (not (= var794 2)) (and (not (= var794 1)) (and (not (= var794 0)) true)))))))) ; Intersect: Cond: b3 == 6  and Intersect: Negate: Cond: b3 == 5   and Intersect: Negate: Cond: b3 == 4   and Intersect: Negate: Cond: b3 == 3   and Intersect: Negate: Cond: b3 == 2   and Intersect: Negate: Cond: b3 == 1   and Intersect: Negate: Cond: b3 == 0   and Non Conditional       
 ; Statement: return "text/xml" 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1475=r0, var500=null_type, var1454=$i0, var2154=$i1, var693=$r2, var1855=java.util.Locale, var541=$r1, var2738=r3, var794=b3, var48=$i2}
; {r0=var1475, null_type=var500, $i0=var1454, $i1=var2154, $r2=var693, java.util.Locale=var1855, $r1=var541, r3=var2738, b3=var794, $i2=var48}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	$i1 = $i0 + 1;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	$r1 = <java.util.Locale: java.util.Locale ROOT>;	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	b3 = -1;	$i2 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i2) {     case 102340: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("gif");     case 105441: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("jpg");     case 111145: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("png");     case 118807: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("xml");     case 3268712: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("jpeg");     case 3440682: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("pict");     case 3559925: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("tiff");     default: goto tableswitch(b3) {     case 0: goto return "image/jpeg";     case 1: goto return "image/jpeg";     case 2: goto return "image/gif";     case 3: goto return "image/x-pict";     case 4: goto return "image/png";     case 5: goto return "image/tiff";     case 6: goto return "text/xml";     default: goto return null; }; };	tableswitch(b3) {     case 0: goto return "image/jpeg";     case 1: goto return "image/jpeg";     case 2: goto return "image/gif";     case 3: goto return "image/x-pict";     case 4: goto return "image/png";     case 5: goto return "image/tiff";     case 6: goto return "text/xml";     default: goto return null; };	return "text/xml"
;block_num 3