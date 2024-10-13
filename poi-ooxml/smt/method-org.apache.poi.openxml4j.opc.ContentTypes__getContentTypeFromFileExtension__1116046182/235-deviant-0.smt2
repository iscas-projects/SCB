(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3213 0)
(declare-sort var3930 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun toLowerCase/1946809429 (String var3930) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-String String)
(declare-const var3930-ROOT var3930)
(declare-const var1080 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1080 null-String)))
(assert true)
(define-const var1197 Int (lastIndexOf/-1292097097 var1080 46)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var2942 Int (+ var1197 1)) ; Statement: $i1 = $i0 + 1 
(assert (not (and true (and (>= var2942 0) (>= (str.len var1080) var2942)))))
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1080=r0, var3213=null_type, var1197=$i0, var2942=$i1, var1542=$r2, var3930=java.util.Locale, var3006=$r1, var1246=r3, var3086=b3, var1786=$i2}
; {r0=var1080, null_type=var3213, $i0=var1197, $i1=var2942, $r2=var1542, java.util.Locale=var3930, $r1=var3006, r3=var1246, b3=var3086, $i2=var1786}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	$i1 = $i0 + 1;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	$r1 = <java.util.Locale: java.util.Locale ROOT>;	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	b3 = -1;	$i2 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i2) {     case 102340: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("gif");     case 105441: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("jpg");     case 111145: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("png");     case 118807: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("xml");     case 3268712: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("jpeg");     case 3440682: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("pict");     case 3559925: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("tiff");     default: goto tableswitch(b3) {     case 0: goto return "image/jpeg";     case 1: goto return "image/jpeg";     case 2: goto return "image/gif";     case 3: goto return "image/x-pict";     case 4: goto return "image/png";     case 5: goto return "image/tiff";     case 6: goto return "text/xml";     default: goto return null; }; };	tableswitch(b3) {     case 0: goto return "image/jpeg";     case 1: goto return "image/jpeg";     case 2: goto return "image/gif";     case 3: goto return "image/x-pict";     case 4: goto return "image/png";     case 5: goto return "image/tiff";     case 6: goto return "text/xml";     default: goto return null; };	return "image/gif"
;block_num 3