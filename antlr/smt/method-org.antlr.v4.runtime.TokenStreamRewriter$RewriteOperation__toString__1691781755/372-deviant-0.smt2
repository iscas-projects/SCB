(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2581 0)
(declare-sort var1542 0)
(declare-sort var2828 0)
(declare-sort var1967 0)
(declare-sort var1354 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var1542) ClassObject)
(declare-fun cast-from-var2581-to-var1542 (var2581) var1542)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun this$0/-227227365 (var2581) var2828)
(declare-fun tokens/849795300 (var2828) var1967)
(declare-fun index/-227227365 (var2581) Int)
(declare-fun var1967_get/-1982438416 (var1967 Int) var1354)
(declare-fun append/-1031950772 (String var1542) String)
(declare-fun cast-from-var1354-to-var1542 (var1354) var1542)
(declare-fun text/-227227365 (var2581) var1542)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2581 var2581)
(declare-const var1486 var2581) ; Statement: r0 := @this: org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation 
(assert (not (= var1486 null-var2581)))
(assert true)
(define-const var3207 ClassObject (getClass/1258963082 (cast-from-var2581-to-var1542 var1486))) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3465 String (getName/-1958580599 var3207)) ; Statement: r15 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var968 Int (indexOf/-1037706067 var3465 36)) ; Statement: $i0 = virtualinvoke r15.<java.lang.String: int indexOf(int)>(36) 
(define-const var2862 Int (+ var968 1)) ; Statement: $i2 = $i0 + 1 
(assert true)
(define-const var2106 Int (length/-134980193 var3465)) ; Statement: $i1 = virtualinvoke r15.<java.lang.String: int length()>() 
(assert (not (and true (and (>= var2862 0) (>= (str.len var3465) var2106) (>= var2106 var2862)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2581-to-var1542=([org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), this$0/-227227365=([org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation], org.antlr.v4.runtime.TokenStreamRewriter), tokens/849795300=([org.antlr.v4.runtime.TokenStreamRewriter], org.antlr.v4.runtime.TokenStream), index/-227227365=([org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation], int), var1967_get/-1982438416=([org.antlr.v4.runtime.TokenStream, int], org.antlr.v4.runtime.Token), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1354-to-var1542=([org.antlr.v4.runtime.Token], java.lang.Object), text/-227227365=([org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2581=org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation, var1486=r0, var1542=java.lang.Object, var3207=$r1, var3465=r15, var968=$i0, var2862=$i2, var2106=$i1, var3025=r16, var2586=$r2, var1659=$r3, var3964=$r4, var891=$r8, var2828=org.antlr.v4.runtime.TokenStreamRewriter, var1755=$r5, var1967=org.antlr.v4.runtime.TokenStream, var561=$r6, var3373=$i3, var1354=org.antlr.v4.runtime.Token, var191=$r7, var684=$r9, var2662=$r11, var2216=$r10, var2305=$r12, var142=$r13, var2012=$r14}
; {org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation=var2581, r0=var1486, java.lang.Object=var1542, $r1=var3207, r15=var3465, $i0=var968, $i2=var2862, $i1=var2106, r16=var3025, $r2=var2586, $r3=var1659, $r4=var3964, $r8=var891, org.antlr.v4.runtime.TokenStreamRewriter=var2828, $r5=var1755, org.antlr.v4.runtime.TokenStream=var1967, $r6=var561, $i3=var3373, org.antlr.v4.runtime.Token=var1354, $r7=var191, $r9=var684, $r11=var2662, $r10=var2216, $r12=var2305, $r13=var142, $r14=var2012}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation;	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r15 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>();	$i0 = virtualinvoke r15.<java.lang.String: int indexOf(int)>(36);	$i2 = $i0 + 1;	$i1 = virtualinvoke r15.<java.lang.String: int length()>();	r16 = virtualinvoke r15.<java.lang.String: java.lang.String substring(int,int)>($i2, $i1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r16);	$r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@");	$r5 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation: org.antlr.v4.runtime.TokenStreamRewriter this$0>;	$r6 = $r5.<org.antlr.v4.runtime.TokenStreamRewriter: org.antlr.v4.runtime.TokenStream tokens>;	$i3 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation: int index>;	$r7 = interfaceinvoke $r6.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token get(int)>($i3);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":\"");	$r10 = r0.<org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation: java.lang.Object text>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\">");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 1