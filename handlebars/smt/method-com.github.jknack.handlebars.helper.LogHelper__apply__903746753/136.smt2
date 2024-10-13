(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1577 0)
(declare-sort var3434 0)
(declare-sort var2346 0)
(declare-sort var754 0)
(declare-sort var676 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun hash/-1089014572 (var2346 String var3434) var3434)
(declare-fun cast-from-String-to-var3434 (String) var3434)
(declare-fun cast-from-var3434-to-String (var3434) String)
(declare-fun tagType/-493974260 (var2346) var754)
(declare-fun inline/1150140008 (var754) Bool)
(declare-fun fn/-835429074 (var2346) String)
(define-fun append/-13659068 ((s String) (tail String)) String (str.++ s tail))
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun log/-1401655580 (var1577) var676)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var676_info/626955599 (var676 String) void)
(declare-const null-var1577 var1577)
(declare-const null-var3434 var3434)
(declare-const null-var2346 var2346)
(declare-const var2864 var1577) ; Statement: r6 := @this: com.github.jknack.handlebars.helper.LogHelper 
(assert (not (= var2864 null-var1577)))
(declare-const var1714 var3434) ; Statement: r22 := @parameter0: java.lang.Object 
(assert (not (= var1714 null-var3434)))
(declare-const var2211 var2346) ; Statement: r1 := @parameter1: com.github.jknack.handlebars.Options 
(assert (not (= var2211 null-var2346)))
(define-const var3942 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3942)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3942!1 String)
(assert (= var3942!1 ""))
(assert true)
(define-const var1344 var3434 (hash/-1089014572 var2211 "level" (cast-from-String-to-var3434 "info"))) ; Statement: $r2 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("level", "info") 
(define-const var3487 String (cast-from-var3434-to-String var1344)) ; Statement: r3 = (java.lang.String) $r2 
(define-const var415 var754 (tagType/-493974260 var2211)) ; Statement: r4 = r1.<com.github.jknack.handlebars.Options: com.github.jknack.handlebars.TagType tagType> 
(assert true)
(define-const var1696 Bool (inline/1150140008 var415)) ; Statement: $z0 = virtualinvoke r4.<com.github.jknack.handlebars.TagType: boolean inline()>() 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.CharSequence fn()>() 
(assert (= (ite var1696 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3206 String (fn/-835429074 var2211)) ; Statement: $r5 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.CharSequence fn()>() 
(assert true)
;(assert (append/-13659068 var3942!1 var3206)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r5) 
(declare-const var3942!2 String)
(assert (str.prefixof var3942!1 var3942!2))
(assert true) ; Non Conditional
(define-const var2432 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var1253 Int (hashCode/-467973558 var3487)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 3641990: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("warn");     case 95458899: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("debug");     case 96784904: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("error");     case 110620997: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("trace");     default: goto tableswitch(b3) {     case 0: goto $r16 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 1: goto $r13 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 2: goto $r10 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 3: goto $r7 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     default: goto $r19 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>; }; } 
(assert (and (not (= var1253 110620997)) (and (not (= var1253 96784904)) (and (not (= var1253 95458899)) (and (not (= var1253 3641990)) true))))) ; Intersect: Negate: Cond: $i0 == 110620997   and Intersect: Negate: Cond: $i0 == 96784904   and Intersect: Negate: Cond: $i0 == 95458899   and Intersect: Negate: Cond: $i0 == 3641990   and Non Conditional    
 ; Statement: tableswitch(b3) {     case 0: goto $r16 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 1: goto $r13 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 2: goto $r10 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 3: goto $r7 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     default: goto $r19 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>; } 
(assert (and (not (= var2432 3)) (and (not (= var2432 2)) (and (not (= var2432 1)) (and (not (= var2432 0)) true))))) ; Intersect: Negate: Cond: b3 == 3   and Intersect: Negate: Cond: b3 == 2   and Intersect: Negate: Cond: b3 == 1   and Intersect: Negate: Cond: b3 == 0   and Non Conditional    
(define-const var746 var676 (log/-1401655580 var2864)) ; Statement: $r19 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log> 
(assert true)
(define-const var1769 String (toString/-2075883882 var3942!2)) ; Statement: $r20 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3683 String (trim/-847153721 var1769)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.String: java.lang.String trim()>() 
;(assert (var676_info/626955599 var746 var3683)) ; Statement: interfaceinvoke $r19.<org.slf4j.Logger: void info(java.lang.String)>($r21) 

(declare-const var746!1 var676)
(declare-const var3683!1 String)
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), hash/-1089014572=([com.github.jknack.handlebars.Options, java.lang.String, java.lang.Object], java.lang.Object), cast-from-String-to-var3434=([java.lang.String], java.lang.Object), cast-from-var3434-to-String=([java.lang.Object], java.lang.String), tagType/-493974260=([com.github.jknack.handlebars.Options], com.github.jknack.handlebars.TagType), inline/1150140008=([com.github.jknack.handlebars.TagType], boolean), fn/-835429074=([com.github.jknack.handlebars.Options], java.lang.CharSequence), append/-13659068=([java.lang.StringBuilder, java.lang.CharSequence], java.lang.StringBuilder), hashCode/-467973558=([java.lang.String], int), log/-1401655580=([com.github.jknack.handlebars.helper.LogHelper], org.slf4j.Logger), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), var676_info/626955599=([org.slf4j.Logger, java.lang.String], void)}
; {var1577=com.github.jknack.handlebars.helper.LogHelper, var2864=r6, var3434=java.lang.Object, var1714=r22, var2346=com.github.jknack.handlebars.Options, var2211=r1, var3942=$r0, var1344=$r2, var3487=r3, var754=com.github.jknack.handlebars.TagType, var415=r4, var1696=$z0, var3206=$r5, var2432=b3, var1253=$i0, var676=org.slf4j.Logger, var746=$r19, var1769=$r20, var3683=$r21}
; {com.github.jknack.handlebars.helper.LogHelper=var1577, r6=var2864, java.lang.Object=var3434, r22=var1714, com.github.jknack.handlebars.Options=var2346, r1=var2211, $r0=var3942, $r2=var1344, r3=var3487, com.github.jknack.handlebars.TagType=var754, r4=var415, $z0=var1696, $r5=var3206, b3=var2432, $i0=var1253, org.slf4j.Logger=var676, $r19=var746, $r20=var1769, $r21=var3683}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>;	<java.lang.String: int hashCode()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>": 1,"<java.lang.String: int hashCode()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r6 := @this: com.github.jknack.handlebars.helper.LogHelper;	r22 := @parameter0: java.lang.Object;	r1 := @parameter1: com.github.jknack.handlebars.Options;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("level", "info");	r3 = (java.lang.String) $r2;	r4 = r1.<com.github.jknack.handlebars.Options: com.github.jknack.handlebars.TagType tagType>;	$z0 = virtualinvoke r4.<com.github.jknack.handlebars.TagType: boolean inline()>();	if $z0 == 0 goto $r5 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.CharSequence fn()>();	$r5 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.CharSequence fn()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r5);	b3 = -1;	$i0 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 3641990: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("warn");     case 95458899: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("debug");     case 96784904: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("error");     case 110620997: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("trace");     default: goto tableswitch(b3) {     case 0: goto $r16 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 1: goto $r13 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 2: goto $r10 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 3: goto $r7 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     default: goto $r19 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>; }; };	tableswitch(b3) {     case 0: goto $r16 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 1: goto $r13 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 2: goto $r10 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 3: goto $r7 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     default: goto $r19 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>; };	$r19 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;	$r20 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = virtualinvoke $r20.<java.lang.String: java.lang.String trim()>();	interfaceinvoke $r19.<org.slf4j.Logger: void info(java.lang.String)>($r21);	return null
;block_num 6