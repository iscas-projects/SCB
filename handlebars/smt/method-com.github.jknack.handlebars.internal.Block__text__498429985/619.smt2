(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var56 0)
(declare-sort var2599 0)
(declare-sort var3698 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun startDelimiter/-1738507346 (var56) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun type/-1738507346 (var56) String)
(declare-fun name/-1738507346 (var56) String)
(declare-fun params/-1588764717 (var3698) var2599)
(declare-fun cast-from-var56-to-var3698 (var56) var3698)
(declare-fun paramsToString/1912981027 (var3698 var2599) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun hashToString/826253629 (var3698) String)
(declare-fun blockParams/-1738507346 (var56) var2599)
(declare-fun var2599_size/-959786421 (var2599) Int)
(declare-fun endDelimiter/-1738507346 (var56) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var56 var56)
(declare-const null-Bool Bool)
(declare-const var3049 var56) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.Block 
(assert (not (= var3049 null-var56)))
(declare-const var605 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var605 null-Bool)))
(declare-const var2691 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2691 null-Bool)))
(define-const var1136 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1136)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1136!1 String)
(assert (= var1136!1 ""))
(define-const var253 String (startDelimiter/-1738507346 var3049)) ; Statement: $r2 = r1.<com.github.jknack.handlebars.internal.Block: java.lang.String startDelimiter> 
(assert true)
(define-const var3347 String (append/672562846 var1136!1 var253)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1136!2 String)
(assert (= var1136!2 (str.++ var1136!1 var253)))
(define-const var2021 String (type/-1738507346 var3049)) ; Statement: $r3 = r1.<com.github.jknack.handlebars.internal.Block: java.lang.String type> 
(assert true)
(define-const var664 String (append/672562846 var3347 var2021)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3347!1 String)
(assert (= var3347!1 (str.++ var3347 var2021)))
(define-const var3845 String (name/-1738507346 var3049)) ; Statement: $r5 = r1.<com.github.jknack.handlebars.internal.Block: java.lang.String name> 
(assert true)
;(assert (append/672562846 var664 var3845)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var664!1 String)
(assert (= var664!1 (str.++ var664 var3845)))
(define-const var1831 var2599 (params/-1588764717 (cast-from-var56-to-var3698 var3049))) ; Statement: $r7 = r1.<com.github.jknack.handlebars.internal.Block: java.util.List params> 
(assert true)
(define-const var1305 String (paramsToString/1912981027 (cast-from-var56-to-var3698 var3049) var1831)) ; Statement: r8 = virtualinvoke r1.<com.github.jknack.handlebars.internal.Block: java.lang.String paramsToString(java.util.List)>($r7) 
(assert true)
(define-const var949 Int (length/-134980193 var1305)) ; Statement: $i0 = virtualinvoke r8.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r39 = virtualinvoke r1.<com.github.jknack.handlebars.internal.Block: java.lang.String hashToString()>() 
(assert (<= var949 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var1250 String (hashToString/826253629 (cast-from-var56-to-var3698 var3049))) ; Statement: $r39 = virtualinvoke r1.<com.github.jknack.handlebars.internal.Block: java.lang.String hashToString()>() 
(assert true)
(define-const var2225 Int (length/-134980193 var1250)) ; Statement: $i1 = virtualinvoke $r39.<java.lang.String: int length()>() 
 ; Statement: if $i1 <= 0 goto $r9 = r1.<com.github.jknack.handlebars.internal.Block: java.util.List blockParams> 
(assert (<= var2225 0)) ; Cond: $i1 <= 0 
(define-const var2492 var2599 (blockParams/-1738507346 var3049)) ; Statement: $r9 = r1.<com.github.jknack.handlebars.internal.Block: java.util.List blockParams> 
(define-const var3440 Int (var2599_size/-959786421 var2492)) ; Statement: $i2 = interfaceinvoke $r9.<java.util.List: int size()>() 
 ; Statement: if $i2 <= 0 goto $r10 = r1.<com.github.jknack.handlebars.internal.Block: java.lang.String endDelimiter> 
(assert (<= var3440 0)) ; Cond: $i2 <= 0 
(define-const var1643 String (endDelimiter/-1738507346 var3049)) ; Statement: $r10 = r1.<com.github.jknack.handlebars.internal.Block: java.lang.String endDelimiter> 
(assert true)
;(assert (append/672562846 var1136!2 var1643)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1136!3 String)
(assert (= var1136!3 (str.++ var1136!2 var1643)))
 ; Statement: if z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n...\n") 
(assert (= (ite var605 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/672562846 var1136!3 "\n...\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n...\n") 
(declare-const var1136!4 String)
(assert (= var1136!4 (str.++ var1136!3 "\n...\n")))
(assert true) ; Non Conditional
 ; Statement: if z1 == 0 goto $r41 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2691 1 0) 0)) ; Cond: z1 == 0 
(assert true)
(define-const var631 String (toString/-2075883882 var1136!4)) ; Statement: $r41 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r41 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), startDelimiter/-1738507346=([com.github.jknack.handlebars.internal.Block], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), type/-1738507346=([com.github.jknack.handlebars.internal.Block], java.lang.String), name/-1738507346=([com.github.jknack.handlebars.internal.Block], java.lang.String), params/-1588764717=([com.github.jknack.handlebars.internal.HelperResolver], java.util.List), cast-from-var56-to-var3698=([com.github.jknack.handlebars.internal.Block], com.github.jknack.handlebars.internal.HelperResolver), paramsToString/1912981027=([com.github.jknack.handlebars.internal.HelperResolver, java.util.List], java.lang.String), length/-134980193=([java.lang.String], int), hashToString/826253629=([com.github.jknack.handlebars.internal.HelperResolver], java.lang.String), blockParams/-1738507346=([com.github.jknack.handlebars.internal.Block], java.util.List), var2599_size/-959786421=([java.util.List], int), endDelimiter/-1738507346=([com.github.jknack.handlebars.internal.Block], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var56=com.github.jknack.handlebars.internal.Block, var3049=r1, var605=z0, var2691=z1, var1136=$r0, var253=$r2, var3347=$r4, var2021=$r3, var664=$r6, var3845=$r5, var2599=java.util.List, var3698=com.github.jknack.handlebars.internal.HelperResolver, var1831=$r7, var1305=r8, var949=$i0, var1250=$r39, var2225=$i1, var2492=$r9, var3440=$i2, var1643=$r10, var631=$r41}
; {com.github.jknack.handlebars.internal.Block=var56, r1=var3049, z0=var605, z1=var2691, $r0=var1136, $r2=var253, $r4=var3347, $r3=var2021, $r6=var664, $r5=var3845, java.util.List=var2599, com.github.jknack.handlebars.internal.HelperResolver=var3698, $r7=var1831, r8=var1305, $i0=var949, $r39=var1250, $i1=var2225, $r9=var2492, $i2=var3440, $r10=var1643, $r41=var631}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.Block;	z0 := @parameter0: boolean;	z1 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.github.jknack.handlebars.internal.Block: java.lang.String startDelimiter>;	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = r1.<com.github.jknack.handlebars.internal.Block: java.lang.String type>;	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = r1.<com.github.jknack.handlebars.internal.Block: java.lang.String name>;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = r1.<com.github.jknack.handlebars.internal.Block: java.util.List params>;	r8 = virtualinvoke r1.<com.github.jknack.handlebars.internal.Block: java.lang.String paramsToString(java.util.List)>($r7);	$i0 = virtualinvoke r8.<java.lang.String: int length()>();	if $i0 <= 0 goto $r39 = virtualinvoke r1.<com.github.jknack.handlebars.internal.Block: java.lang.String hashToString()>();	$r39 = virtualinvoke r1.<com.github.jknack.handlebars.internal.Block: java.lang.String hashToString()>();	$i1 = virtualinvoke $r39.<java.lang.String: int length()>();	if $i1 <= 0 goto $r9 = r1.<com.github.jknack.handlebars.internal.Block: java.util.List blockParams>;	$r9 = r1.<com.github.jknack.handlebars.internal.Block: java.util.List blockParams>;	$i2 = interfaceinvoke $r9.<java.util.List: int size()>();	if $i2 <= 0 goto $r10 = r1.<com.github.jknack.handlebars.internal.Block: java.lang.String endDelimiter>;	$r10 = r1.<com.github.jknack.handlebars.internal.Block: java.lang.String endDelimiter>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	if z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n...\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n...\n");	if z1 == 0 goto $r41 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r41 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r41
;block_num 7