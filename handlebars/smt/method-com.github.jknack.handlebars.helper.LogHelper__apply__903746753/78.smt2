(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2219 0)
(declare-sort var614 0)
(declare-sort var1996 0)
(declare-sort var1908 0)
(declare-sort var3066 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun hash/-1089014572 (var1996 String var614) var614)
(declare-fun cast-from-String-to-var614 (String) var614)
(declare-fun cast-from-var614-to-String (var614) String)
(declare-fun tagType/-493974260 (var1996) var1908)
(declare-fun inline/1150140008 (var1908) Bool)
(declare-fun fn/-835429074 (var1996) String)
(define-fun append/-13659068 ((s String) (tail String)) String (str.++ s tail))
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun log/-1401655580 (var2219) var3066)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var3066_error/-189932385 (var3066 String) void)
(declare-const null-var2219 var2219)
(declare-const null-var614 var614)
(declare-const null-var1996 var1996)
(declare-const var3072 var2219) ; Statement: r6 := @this: com.github.jknack.handlebars.helper.LogHelper 
(assert (not (= var3072 null-var2219)))
(declare-const var3242 var614) ; Statement: r22 := @parameter0: java.lang.Object 
(assert (not (= var3242 null-var614)))
(declare-const var3188 var1996) ; Statement: r1 := @parameter1: com.github.jknack.handlebars.Options 
(assert (not (= var3188 null-var1996)))
(define-const var1214 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1214)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1214!1 String)
(assert (= var1214!1 ""))
(assert true)
(define-const var588 var614 (hash/-1089014572 var3188 "level" (cast-from-String-to-var614 "info"))) ; Statement: $r2 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("level", "info") 
(define-const var3367 String (cast-from-var614-to-String var588)) ; Statement: r3 = (java.lang.String) $r2 
(define-const var234 var1908 (tagType/-493974260 var3188)) ; Statement: r4 = r1.<com.github.jknack.handlebars.Options: com.github.jknack.handlebars.TagType tagType> 
(assert true)
(define-const var1393 Bool (inline/1150140008 var234)) ; Statement: $z0 = virtualinvoke r4.<com.github.jknack.handlebars.TagType: boolean inline()>() 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.CharSequence fn()>() 
(assert (= (ite var1393 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1955 String (fn/-835429074 var3188)) ; Statement: $r5 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.CharSequence fn()>() 
(assert true)
;(assert (append/-13659068 var1214!1 var1955)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r5) 
(declare-const var1214!2 String)
(assert (str.prefixof var1214!1 var1214!2))
(assert true) ; Non Conditional
(define-const var1454 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var1228 Int (hashCode/-467973558 var3367)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 3641990: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("warn");     case 95458899: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("debug");     case 96784904: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("error");     case 110620997: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("trace");     default: goto tableswitch(b3) {     case 0: goto $r16 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 1: goto $r13 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 2: goto $r10 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 3: goto $r7 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     default: goto $r19 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>; }; } 
(assert (and (not (= var1228 110620997)) (and (not (= var1228 96784904)) (and (not (= var1228 95458899)) (and (not (= var1228 3641990)) true))))) ; Intersect: Negate: Cond: $i0 == 110620997   and Intersect: Negate: Cond: $i0 == 96784904   and Intersect: Negate: Cond: $i0 == 95458899   and Intersect: Negate: Cond: $i0 == 3641990   and Non Conditional    
 ; Statement: tableswitch(b3) {     case 0: goto $r16 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 1: goto $r13 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 2: goto $r10 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 3: goto $r7 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     default: goto $r19 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>; } 
(assert (and (= var1454 0) true)) ; Intersect: Cond: b3 == 0  and Non Conditional 
(define-const var2539 var3066 (log/-1401655580 var3072)) ; Statement: $r16 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log> 
(assert true)
(define-const var540 String (toString/-2075883882 var1214!2)) ; Statement: $r17 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2465 String (trim/-847153721 var540)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.String: java.lang.String trim()>() 
;(assert (var3066_error/-189932385 var2539 var2465)) ; Statement: interfaceinvoke $r16.<org.slf4j.Logger: void error(java.lang.String)>($r18) 

(declare-const var2539!1 var3066)
(declare-const var2465!1 String)
 ; Statement: goto [?= return null] 
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), hash/-1089014572=([com.github.jknack.handlebars.Options, java.lang.String, java.lang.Object], java.lang.Object), cast-from-String-to-var614=([java.lang.String], java.lang.Object), cast-from-var614-to-String=([java.lang.Object], java.lang.String), tagType/-493974260=([com.github.jknack.handlebars.Options], com.github.jknack.handlebars.TagType), inline/1150140008=([com.github.jknack.handlebars.TagType], boolean), fn/-835429074=([com.github.jknack.handlebars.Options], java.lang.CharSequence), append/-13659068=([java.lang.StringBuilder, java.lang.CharSequence], java.lang.StringBuilder), hashCode/-467973558=([java.lang.String], int), log/-1401655580=([com.github.jknack.handlebars.helper.LogHelper], org.slf4j.Logger), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), var3066_error/-189932385=([org.slf4j.Logger, java.lang.String], void)}
; {var2219=com.github.jknack.handlebars.helper.LogHelper, var3072=r6, var614=java.lang.Object, var3242=r22, var1996=com.github.jknack.handlebars.Options, var3188=r1, var1214=$r0, var588=$r2, var3367=r3, var1908=com.github.jknack.handlebars.TagType, var234=r4, var1393=$z0, var1955=$r5, var1454=b3, var1228=$i0, var3066=org.slf4j.Logger, var2539=$r16, var540=$r17, var2465=$r18}
; {com.github.jknack.handlebars.helper.LogHelper=var2219, r6=var3072, java.lang.Object=var614, r22=var3242, com.github.jknack.handlebars.Options=var1996, r1=var3188, $r0=var1214, $r2=var588, r3=var3367, com.github.jknack.handlebars.TagType=var1908, r4=var234, $z0=var1393, $r5=var1955, b3=var1454, $i0=var1228, org.slf4j.Logger=var3066, $r16=var2539, $r17=var540, $r18=var2465}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>;	<java.lang.String: int hashCode()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>": 1,"<java.lang.String: int hashCode()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r6 := @this: com.github.jknack.handlebars.helper.LogHelper;	r22 := @parameter0: java.lang.Object;	r1 := @parameter1: com.github.jknack.handlebars.Options;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("level", "info");	r3 = (java.lang.String) $r2;	r4 = r1.<com.github.jknack.handlebars.Options: com.github.jknack.handlebars.TagType tagType>;	$z0 = virtualinvoke r4.<com.github.jknack.handlebars.TagType: boolean inline()>();	if $z0 == 0 goto $r5 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.CharSequence fn()>();	$r5 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.CharSequence fn()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r5);	b3 = -1;	$i0 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 3641990: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("warn");     case 95458899: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("debug");     case 96784904: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("error");     case 110620997: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("trace");     default: goto tableswitch(b3) {     case 0: goto $r16 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 1: goto $r13 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 2: goto $r10 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 3: goto $r7 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     default: goto $r19 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>; }; };	tableswitch(b3) {     case 0: goto $r16 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 1: goto $r13 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 2: goto $r10 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 3: goto $r7 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     default: goto $r19 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>; };	$r16 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;	$r17 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = virtualinvoke $r17.<java.lang.String: java.lang.String trim()>();	interfaceinvoke $r16.<org.slf4j.Logger: void error(java.lang.String)>($r18);	goto [?= return null];	return null
;block_num 6