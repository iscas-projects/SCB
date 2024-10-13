(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var936 0)
(declare-sort var3381 0)
(declare-sort var3208 0)
(declare-sort var3320 0)
(declare-sort var3979 0)
(declare-sort var3143 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun text/-227227365 (var3208) var3381)
(declare-fun cast-from-var936-to-var3208 (var936) var3208)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun this$0/-464981035 (var936) var3320)
(declare-fun tokens/849795300 (var3320) var3979)
(declare-fun index/-227227365 (var3208) Int)
(declare-fun var3979_get/-1982438416 (var3979 Int) var3143)
(declare-fun append/-1031950772 (String var3381) String)
(declare-fun cast-from-var3143-to-var3381 (var3143) var3381)
(declare-fun lastIndex/-464981035 (var936) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var936 var936)
(declare-const null-var3381 var3381)
(declare-const var1757 var936) ; Statement: r0 := @this: org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp 
(assert (not (= var1757 null-var936)))
(define-const var1511 var3381 (text/-227227365 (cast-from-var936-to-var3208 var1757))) ; Statement: $r1 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp: java.lang.Object text> 
 ; Statement: if $r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (not (= var1511 null-var3381)))) ; Negate: Cond: $r1 != null  
(define-const var3357 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3357)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3357!1 String)
(assert (= var3357!1 ""))
(assert true)
(define-const var2894 String (append/672562846 var3357!1 "<DeleteOp@")) ; Statement: $r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<DeleteOp@") 
(declare-const var3357!2 String)
(assert (= var3357!2 (str.++ var3357!1 "<DeleteOp@")))
(define-const var3472 var3320 (this$0/-464981035 var1757)) ; Statement: $r19 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp: org.antlr.v4.runtime.TokenStreamRewriter this$0> 
(define-const var3533 var3979 (tokens/849795300 var3472)) ; Statement: $r20 = $r19.<org.antlr.v4.runtime.TokenStreamRewriter: org.antlr.v4.runtime.TokenStream tokens> 
(define-const var2388 Int (index/-227227365 (cast-from-var936-to-var3208 var1757))) ; Statement: $i2 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp: int index> 
(define-const var1669 var3143 (var3979_get/-1982438416 var3533 var2388)) ; Statement: $r21 = interfaceinvoke $r20.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token get(int)>($i2) 
(assert true)
(define-const var491 String (append/-1031950772 var2894 (cast-from-var3143-to-var3381 var1669))) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21) 
(declare-const var2894!1 String)
(assert (str.prefixof var2894 var2894!1))
(assert true)
(define-const var223 String (append/672562846 var491 "..")) ; Statement: $r27 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("..") 
(declare-const var491!1 String)
(assert (= var491!1 (str.++ var491 "..")))
(define-const var3203 var3320 (this$0/-464981035 var1757)) ; Statement: $r24 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp: org.antlr.v4.runtime.TokenStreamRewriter this$0> 
(define-const var3215 var3979 (tokens/849795300 var3203)) ; Statement: $r25 = $r24.<org.antlr.v4.runtime.TokenStreamRewriter: org.antlr.v4.runtime.TokenStream tokens> 
(define-const var3828 Int (lastIndex/-464981035 var1757)) ; Statement: $i3 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp: int lastIndex> 
(define-const var1141 var3143 (var3979_get/-1982438416 var3215 var3828)) ; Statement: $r26 = interfaceinvoke $r25.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token get(int)>($i3) 
(assert true)
(define-const var559 String (append/-1031950772 var223 (cast-from-var3143-to-var3381 var1141))) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r26) 
(declare-const var223!1 String)
(assert (str.prefixof var223 var223!1))
(assert true)
(define-const var2353 String (append/672562846 var559 ">")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var559!1 String)
(assert (= var559!1 (str.++ var559 ">")))
(assert true)
(define-const var278 String (toString/-2075883882 var2353)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {text/-227227365=([org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation], java.lang.Object), cast-from-var936-to-var3208=([org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp], org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), this$0/-464981035=([org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp], org.antlr.v4.runtime.TokenStreamRewriter), tokens/849795300=([org.antlr.v4.runtime.TokenStreamRewriter], org.antlr.v4.runtime.TokenStream), index/-227227365=([org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation], int), var3979_get/-1982438416=([org.antlr.v4.runtime.TokenStream, int], org.antlr.v4.runtime.Token), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3143-to-var3381=([org.antlr.v4.runtime.Token], java.lang.Object), lastIndex/-464981035=([org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var936=org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp, var1757=r0, var3381=java.lang.Object, var3208=org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation, var1511=$r1, var3357=$r18, var2894=$r22, var3320=org.antlr.v4.runtime.TokenStreamRewriter, var3472=$r19, var3979=org.antlr.v4.runtime.TokenStream, var3533=$r20, var2388=$i2, var3143=org.antlr.v4.runtime.Token, var1669=$r21, var491=$r23, var223=$r27, var3203=$r24, var3215=$r25, var3828=$i3, var1141=$r26, var559=$r28, var2353=$r29, var278=$r30}
; {org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp=var936, r0=var1757, java.lang.Object=var3381, org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation=var3208, $r1=var1511, $r18=var3357, $r22=var2894, org.antlr.v4.runtime.TokenStreamRewriter=var3320, $r19=var3472, org.antlr.v4.runtime.TokenStream=var3979, $r20=var3533, $i2=var2388, org.antlr.v4.runtime.Token=var3143, $r21=var1669, $r23=var491, $r27=var223, $r24=var3203, $r25=var3215, $i3=var3828, $r26=var1141, $r28=var559, $r29=var2353, $r30=var278}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp;	$r1 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp: java.lang.Object text>;	if $r1 != null goto $r2 = new java.lang.StringBuilder;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<DeleteOp@");	$r19 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp: org.antlr.v4.runtime.TokenStreamRewriter this$0>;	$r20 = $r19.<org.antlr.v4.runtime.TokenStreamRewriter: org.antlr.v4.runtime.TokenStream tokens>;	$i2 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp: int index>;	$r21 = interfaceinvoke $r20.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token get(int)>($i2);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21);	$r27 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("..");	$r24 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp: org.antlr.v4.runtime.TokenStreamRewriter this$0>;	$r25 = $r24.<org.antlr.v4.runtime.TokenStreamRewriter: org.antlr.v4.runtime.TokenStream tokens>;	$i3 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp: int lastIndex>;	$r26 = interfaceinvoke $r25.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token get(int)>($i3);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r26);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	return $r30
;block_num 2