(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3137 0)
(declare-sort var2460 0)
(declare-sort var407 0)
(declare-sort var1199 0)
(declare-sort var327 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun hash/-1089014572 (var407 String var2460) var2460)
(declare-fun cast-from-String-to-var2460 (String) var2460)
(declare-fun cast-from-var2460-to-String (var2460) String)
(declare-fun tagType/-493974260 (var407) var1199)
(declare-fun inline/1150140008 (var1199) Bool)
(declare-fun fn/-835429074 (var407) String)
(define-fun append/-13659068 ((s String) (tail String)) String (str.++ s tail))
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun log/-1401655580 (var3137) var327)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var327_warn/248785015 (var327 String) void)
(declare-const null-var3137 var3137)
(declare-const null-var2460 var2460)
(declare-const null-var407 var407)
(declare-const var3974 var3137) ; Statement: r6 := @this: com.github.jknack.handlebars.helper.LogHelper 
(assert (not (= var3974 null-var3137)))
(declare-const var93 var2460) ; Statement: r22 := @parameter0: java.lang.Object 
(assert (not (= var93 null-var2460)))
(declare-const var3697 var407) ; Statement: r1 := @parameter1: com.github.jknack.handlebars.Options 
(assert (not (= var3697 null-var407)))
(define-const var3124 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3124)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3124!1 String)
(assert (= var3124!1 ""))
(assert true)
(define-const var2180 var2460 (hash/-1089014572 var3697 "level" (cast-from-String-to-var2460 "info"))) ; Statement: $r2 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("level", "info") 
(define-const var2779 String (cast-from-var2460-to-String var2180)) ; Statement: r3 = (java.lang.String) $r2 
(define-const var2552 var1199 (tagType/-493974260 var3697)) ; Statement: r4 = r1.<com.github.jknack.handlebars.Options: com.github.jknack.handlebars.TagType tagType> 
(assert true)
(define-const var3648 Bool (inline/1150140008 var2552)) ; Statement: $z0 = virtualinvoke r4.<com.github.jknack.handlebars.TagType: boolean inline()>() 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.CharSequence fn()>() 
(assert (= (ite var3648 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1821 String (fn/-835429074 var3697)) ; Statement: $r5 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.CharSequence fn()>() 
(assert true)
;(assert (append/-13659068 var3124!1 var1821)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r5) 
(declare-const var3124!2 String)
(assert (str.prefixof var3124!1 var3124!2))
(assert true) ; Non Conditional
(define-const var18 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var313 Int (hashCode/-467973558 var2779)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 3641990: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("warn");     case 95458899: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("debug");     case 96784904: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("error");     case 110620997: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("trace");     default: goto tableswitch(b3) {     case 0: goto $r16 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 1: goto $r13 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 2: goto $r10 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 3: goto $r7 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     default: goto $r19 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>; }; } 
(assert (and (not (= var313 110620997)) (and (not (= var313 96784904)) (and (not (= var313 95458899)) (and (not (= var313 3641990)) true))))) ; Intersect: Negate: Cond: $i0 == 110620997   and Intersect: Negate: Cond: $i0 == 96784904   and Intersect: Negate: Cond: $i0 == 95458899   and Intersect: Negate: Cond: $i0 == 3641990   and Non Conditional    
 ; Statement: tableswitch(b3) {     case 0: goto $r16 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 1: goto $r13 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 2: goto $r10 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 3: goto $r7 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     default: goto $r19 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>; } 
(assert (and (= var18 2) (and (not (= var18 1)) (and (not (= var18 0)) true)))) ; Intersect: Cond: b3 == 2  and Intersect: Negate: Cond: b3 == 1   and Intersect: Negate: Cond: b3 == 0   and Non Conditional   
(define-const var270 var327 (log/-1401655580 var3974)) ; Statement: $r10 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log> 
(assert true)
(define-const var2004 String (toString/-2075883882 var3124!2)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1530 String (trim/-847153721 var2004)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.String: java.lang.String trim()>() 
;(assert (var327_warn/248785015 var270 var1530)) ; Statement: interfaceinvoke $r10.<org.slf4j.Logger: void warn(java.lang.String)>($r12) 

(declare-const var270!1 var327)
(declare-const var1530!1 String)
 ; Statement: goto [?= return null] 
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), hash/-1089014572=([com.github.jknack.handlebars.Options, java.lang.String, java.lang.Object], java.lang.Object), cast-from-String-to-var2460=([java.lang.String], java.lang.Object), cast-from-var2460-to-String=([java.lang.Object], java.lang.String), tagType/-493974260=([com.github.jknack.handlebars.Options], com.github.jknack.handlebars.TagType), inline/1150140008=([com.github.jknack.handlebars.TagType], boolean), fn/-835429074=([com.github.jknack.handlebars.Options], java.lang.CharSequence), append/-13659068=([java.lang.StringBuilder, java.lang.CharSequence], java.lang.StringBuilder), hashCode/-467973558=([java.lang.String], int), log/-1401655580=([com.github.jknack.handlebars.helper.LogHelper], org.slf4j.Logger), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), var327_warn/248785015=([org.slf4j.Logger, java.lang.String], void)}
; {var3137=com.github.jknack.handlebars.helper.LogHelper, var3974=r6, var2460=java.lang.Object, var93=r22, var407=com.github.jknack.handlebars.Options, var3697=r1, var3124=$r0, var2180=$r2, var2779=r3, var1199=com.github.jknack.handlebars.TagType, var2552=r4, var3648=$z0, var1821=$r5, var18=b3, var313=$i0, var327=org.slf4j.Logger, var270=$r10, var2004=$r11, var1530=$r12}
; {com.github.jknack.handlebars.helper.LogHelper=var3137, r6=var3974, java.lang.Object=var2460, r22=var93, com.github.jknack.handlebars.Options=var407, r1=var3697, $r0=var3124, $r2=var2180, r3=var2779, com.github.jknack.handlebars.TagType=var1199, r4=var2552, $z0=var3648, $r5=var1821, b3=var18, $i0=var313, org.slf4j.Logger=var327, $r10=var270, $r11=var2004, $r12=var1530}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>;	<java.lang.String: int hashCode()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>": 1,"<java.lang.String: int hashCode()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r6 := @this: com.github.jknack.handlebars.helper.LogHelper;	r22 := @parameter0: java.lang.Object;	r1 := @parameter1: com.github.jknack.handlebars.Options;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("level", "info");	r3 = (java.lang.String) $r2;	r4 = r1.<com.github.jknack.handlebars.Options: com.github.jknack.handlebars.TagType tagType>;	$z0 = virtualinvoke r4.<com.github.jknack.handlebars.TagType: boolean inline()>();	if $z0 == 0 goto $r5 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.CharSequence fn()>();	$r5 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.CharSequence fn()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r5);	b3 = -1;	$i0 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 3641990: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("warn");     case 95458899: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("debug");     case 96784904: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("error");     case 110620997: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("trace");     default: goto tableswitch(b3) {     case 0: goto $r16 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 1: goto $r13 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 2: goto $r10 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 3: goto $r7 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     default: goto $r19 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>; }; };	tableswitch(b3) {     case 0: goto $r16 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 1: goto $r13 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 2: goto $r10 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 3: goto $r7 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     default: goto $r19 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>; };	$r10 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = virtualinvoke $r11.<java.lang.String: java.lang.String trim()>();	interfaceinvoke $r10.<org.slf4j.Logger: void warn(java.lang.String)>($r12);	goto [?= return null];	return null
;block_num 6