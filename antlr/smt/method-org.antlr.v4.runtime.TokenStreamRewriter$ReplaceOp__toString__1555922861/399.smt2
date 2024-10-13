(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3240 0)
(declare-sort var3510 0)
(declare-sort var1515 0)
(declare-sort var3549 0)
(declare-sort var173 0)
(declare-sort var280 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun text/-227227365 (var1515) var3510)
(declare-fun cast-from-var3240-to-var1515 (var3240) var1515)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun this$0/-464981035 (var3240) var3549)
(declare-fun tokens/849795300 (var3549) var173)
(declare-fun index/-227227365 (var1515) Int)
(declare-fun var173_get/-1982438416 (var173 Int) var280)
(declare-fun append/-1031950772 (String var3510) String)
(declare-fun cast-from-var280-to-var3510 (var280) var3510)
(declare-fun lastIndex/-464981035 (var3240) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3240 var3240)
(declare-const null-var3510 var3510)
(declare-const var1771 var3240) ; Statement: r0 := @this: org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp 
(assert (not (= var1771 null-var3240)))
(define-const var1287 var3510 (text/-227227365 (cast-from-var3240-to-var1515 var1771))) ; Statement: $r1 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp: java.lang.Object text> 
 ; Statement: if $r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var1287 null-var3510))) ; Cond: $r1 != null 
(define-const var2628 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2628)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2628!1 String)
(assert (= var2628!1 ""))
(assert true)
(define-const var2360 String (append/672562846 var2628!1 "<ReplaceOp@")) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<ReplaceOp@") 
(declare-const var2628!2 String)
(assert (= var2628!2 (str.++ var2628!1 "<ReplaceOp@")))
(define-const var3323 var3549 (this$0/-464981035 var1771)) ; Statement: $r3 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp: org.antlr.v4.runtime.TokenStreamRewriter this$0> 
(define-const var397 var173 (tokens/849795300 var3323)) ; Statement: $r4 = $r3.<org.antlr.v4.runtime.TokenStreamRewriter: org.antlr.v4.runtime.TokenStream tokens> 
(define-const var2473 Int (index/-227227365 (cast-from-var3240-to-var1515 var1771))) ; Statement: $i0 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp: int index> 
(define-const var3668 var280 (var173_get/-1982438416 var397 var2473)) ; Statement: $r5 = interfaceinvoke $r4.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token get(int)>($i0) 
(assert true)
(define-const var2029 String (append/-1031950772 var2360 (cast-from-var280-to-var3510 var3668))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var2360!1 String)
(assert (str.prefixof var2360 var2360!1))
(assert true)
(define-const var528 String (append/672562846 var2029 "..")) ; Statement: $r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("..") 
(declare-const var2029!1 String)
(assert (= var2029!1 (str.++ var2029 "..")))
(define-const var3221 var3549 (this$0/-464981035 var1771)) ; Statement: $r8 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp: org.antlr.v4.runtime.TokenStreamRewriter this$0> 
(define-const var3076 var173 (tokens/849795300 var3221)) ; Statement: $r9 = $r8.<org.antlr.v4.runtime.TokenStreamRewriter: org.antlr.v4.runtime.TokenStream tokens> 
(define-const var1934 Int (lastIndex/-464981035 var1771)) ; Statement: $i1 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp: int lastIndex> 
(define-const var3585 var280 (var173_get/-1982438416 var3076 var1934)) ; Statement: $r10 = interfaceinvoke $r9.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token get(int)>($i1) 
(assert true)
(define-const var1580 String (append/-1031950772 var528 (cast-from-var280-to-var3510 var3585))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var528!1 String)
(assert (str.prefixof var528 var528!1))
(assert true)
(define-const var2210 String (append/672562846 var1580 ":\u0022")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":\"") 
(declare-const var1580!1 String)
(assert (= var1580!1 (str.++ var1580 ":\u0022")))
(define-const var1614 var3510 (text/-227227365 (cast-from-var3240-to-var1515 var1771))) ; Statement: $r13 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp: java.lang.Object text> 
(assert true)
(define-const var3176 String (append/-1031950772 var2210 var1614)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13) 
(declare-const var2210!1 String)
(assert (str.prefixof var2210 var2210!1))
(assert true)
(define-const var1558 String (append/672562846 var3176 "\u0022>")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\">") 
(declare-const var3176!1 String)
(assert (= var3176!1 (str.++ var3176 "\u0022>")))
(assert true)
(define-const var989 String (toString/-2075883882 var1558)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {text/-227227365=([org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation], java.lang.Object), cast-from-var3240-to-var1515=([org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp], org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), this$0/-464981035=([org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp], org.antlr.v4.runtime.TokenStreamRewriter), tokens/849795300=([org.antlr.v4.runtime.TokenStreamRewriter], org.antlr.v4.runtime.TokenStream), index/-227227365=([org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation], int), var173_get/-1982438416=([org.antlr.v4.runtime.TokenStream, int], org.antlr.v4.runtime.Token), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var280-to-var3510=([org.antlr.v4.runtime.Token], java.lang.Object), lastIndex/-464981035=([org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3240=org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp, var1771=r0, var3510=java.lang.Object, var1515=org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation, var1287=$r1, var2628=$r2, var2360=$r6, var3549=org.antlr.v4.runtime.TokenStreamRewriter, var3323=$r3, var173=org.antlr.v4.runtime.TokenStream, var397=$r4, var2473=$i0, var280=org.antlr.v4.runtime.Token, var3668=$r5, var2029=$r7, var528=$r11, var3221=$r8, var3076=$r9, var1934=$i1, var3585=$r10, var1580=$r12, var2210=$r14, var1614=$r13, var3176=$r15, var1558=$r16, var989=$r17}
; {org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp=var3240, r0=var1771, java.lang.Object=var3510, org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation=var1515, $r1=var1287, $r2=var2628, $r6=var2360, org.antlr.v4.runtime.TokenStreamRewriter=var3549, $r3=var3323, org.antlr.v4.runtime.TokenStream=var173, $r4=var397, $i0=var2473, org.antlr.v4.runtime.Token=var280, $r5=var3668, $r7=var2029, $r11=var528, $r8=var3221, $r9=var3076, $i1=var1934, $r10=var3585, $r12=var1580, $r14=var2210, $r13=var1614, $r15=var3176, $r16=var1558, $r17=var989}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp;	$r1 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp: java.lang.Object text>;	if $r1 != null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<ReplaceOp@");	$r3 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp: org.antlr.v4.runtime.TokenStreamRewriter this$0>;	$r4 = $r3.<org.antlr.v4.runtime.TokenStreamRewriter: org.antlr.v4.runtime.TokenStream tokens>;	$i0 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp: int index>;	$r5 = interfaceinvoke $r4.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token get(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("..");	$r8 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp: org.antlr.v4.runtime.TokenStreamRewriter this$0>;	$r9 = $r8.<org.antlr.v4.runtime.TokenStreamRewriter: org.antlr.v4.runtime.TokenStream tokens>;	$i1 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp: int lastIndex>;	$r10 = interfaceinvoke $r9.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token get(int)>($i1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":\"");	$r13 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$ReplaceOp: java.lang.Object text>;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\">");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 2