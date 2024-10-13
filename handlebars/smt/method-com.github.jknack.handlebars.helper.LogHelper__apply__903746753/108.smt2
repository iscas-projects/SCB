(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var292 0)
(declare-sort var2009 0)
(declare-sort var3852 0)
(declare-sort var1462 0)
(declare-sort var2864 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun hash/-1089014572 (var3852 String var2009) var2009)
(declare-fun cast-from-String-to-var2009 (String) var2009)
(declare-fun cast-from-var2009-to-String (var2009) String)
(declare-fun tagType/-493974260 (var3852) var1462)
(declare-fun inline/1150140008 (var1462) Bool)
(declare-fun fn/-835429074 (var3852) String)
(define-fun append/-13659068 ((s String) (tail String)) String (str.++ s tail))
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun log/-1401655580 (var292) var2864)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var2864_debug/594372212 (var2864 String) void)
(declare-const null-var292 var292)
(declare-const null-var2009 var2009)
(declare-const null-var3852 var3852)
(declare-const var727 var292) ; Statement: r6 := @this: com.github.jknack.handlebars.helper.LogHelper 
(assert (not (= var727 null-var292)))
(declare-const var1066 var2009) ; Statement: r22 := @parameter0: java.lang.Object 
(assert (not (= var1066 null-var2009)))
(declare-const var2025 var3852) ; Statement: r1 := @parameter1: com.github.jknack.handlebars.Options 
(assert (not (= var2025 null-var3852)))
(define-const var2102 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2102)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2102!1 String)
(assert (= var2102!1 ""))
(assert true)
(define-const var3997 var2009 (hash/-1089014572 var2025 "level" (cast-from-String-to-var2009 "info"))) ; Statement: $r2 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("level", "info") 
(define-const var3932 String (cast-from-var2009-to-String var3997)) ; Statement: r3 = (java.lang.String) $r2 
(define-const var1612 var1462 (tagType/-493974260 var2025)) ; Statement: r4 = r1.<com.github.jknack.handlebars.Options: com.github.jknack.handlebars.TagType tagType> 
(assert true)
(define-const var2134 Bool (inline/1150140008 var1612)) ; Statement: $z0 = virtualinvoke r4.<com.github.jknack.handlebars.TagType: boolean inline()>() 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.CharSequence fn()>() 
(assert (= (ite var2134 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1895 String (fn/-835429074 var2025)) ; Statement: $r5 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.CharSequence fn()>() 
(assert true)
;(assert (append/-13659068 var2102!1 var1895)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r5) 
(declare-const var2102!2 String)
(assert (str.prefixof var2102!1 var2102!2))
(assert true) ; Non Conditional
(define-const var191 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var3655 Int (hashCode/-467973558 var3932)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 3641990: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("warn");     case 95458899: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("debug");     case 96784904: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("error");     case 110620997: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("trace");     default: goto tableswitch(b3) {     case 0: goto $r16 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 1: goto $r13 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 2: goto $r10 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 3: goto $r7 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     default: goto $r19 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>; }; } 
(assert (and (not (= var3655 110620997)) (and (not (= var3655 96784904)) (and (not (= var3655 95458899)) (and (not (= var3655 3641990)) true))))) ; Intersect: Negate: Cond: $i0 == 110620997   and Intersect: Negate: Cond: $i0 == 96784904   and Intersect: Negate: Cond: $i0 == 95458899   and Intersect: Negate: Cond: $i0 == 3641990   and Non Conditional    
 ; Statement: tableswitch(b3) {     case 0: goto $r16 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 1: goto $r13 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 2: goto $r10 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 3: goto $r7 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     default: goto $r19 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>; } 
(assert (and (= var191 1) (and (not (= var191 0)) true))) ; Intersect: Cond: b3 == 1  and Intersect: Negate: Cond: b3 == 0   and Non Conditional  
(define-const var1635 var2864 (log/-1401655580 var727)) ; Statement: $r13 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log> 
(assert true)
(define-const var2769 String (toString/-2075883882 var2102!2)) ; Statement: $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1467 String (trim/-847153721 var2769)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.String: java.lang.String trim()>() 
;(assert (var2864_debug/594372212 var1635 var1467)) ; Statement: interfaceinvoke $r13.<org.slf4j.Logger: void debug(java.lang.String)>($r15) 

(declare-const var1635!1 var2864)
(declare-const var1467!1 String)
 ; Statement: goto [?= return null] 
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), hash/-1089014572=([com.github.jknack.handlebars.Options, java.lang.String, java.lang.Object], java.lang.Object), cast-from-String-to-var2009=([java.lang.String], java.lang.Object), cast-from-var2009-to-String=([java.lang.Object], java.lang.String), tagType/-493974260=([com.github.jknack.handlebars.Options], com.github.jknack.handlebars.TagType), inline/1150140008=([com.github.jknack.handlebars.TagType], boolean), fn/-835429074=([com.github.jknack.handlebars.Options], java.lang.CharSequence), append/-13659068=([java.lang.StringBuilder, java.lang.CharSequence], java.lang.StringBuilder), hashCode/-467973558=([java.lang.String], int), log/-1401655580=([com.github.jknack.handlebars.helper.LogHelper], org.slf4j.Logger), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), var2864_debug/594372212=([org.slf4j.Logger, java.lang.String], void)}
; {var292=com.github.jknack.handlebars.helper.LogHelper, var727=r6, var2009=java.lang.Object, var1066=r22, var3852=com.github.jknack.handlebars.Options, var2025=r1, var2102=$r0, var3997=$r2, var3932=r3, var1462=com.github.jknack.handlebars.TagType, var1612=r4, var2134=$z0, var1895=$r5, var191=b3, var3655=$i0, var2864=org.slf4j.Logger, var1635=$r13, var2769=$r14, var1467=$r15}
; {com.github.jknack.handlebars.helper.LogHelper=var292, r6=var727, java.lang.Object=var2009, r22=var1066, com.github.jknack.handlebars.Options=var3852, r1=var2025, $r0=var2102, $r2=var3997, r3=var3932, com.github.jknack.handlebars.TagType=var1462, r4=var1612, $z0=var2134, $r5=var1895, b3=var191, $i0=var3655, org.slf4j.Logger=var2864, $r13=var1635, $r14=var2769, $r15=var1467}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>;	<java.lang.String: int hashCode()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>": 1,"<java.lang.String: int hashCode()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r6 := @this: com.github.jknack.handlebars.helper.LogHelper;	r22 := @parameter0: java.lang.Object;	r1 := @parameter1: com.github.jknack.handlebars.Options;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("level", "info");	r3 = (java.lang.String) $r2;	r4 = r1.<com.github.jknack.handlebars.Options: com.github.jknack.handlebars.TagType tagType>;	$z0 = virtualinvoke r4.<com.github.jknack.handlebars.TagType: boolean inline()>();	if $z0 == 0 goto $r5 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.CharSequence fn()>();	$r5 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.CharSequence fn()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r5);	b3 = -1;	$i0 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 3641990: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("warn");     case 95458899: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("debug");     case 96784904: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("error");     case 110620997: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("trace");     default: goto tableswitch(b3) {     case 0: goto $r16 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 1: goto $r13 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 2: goto $r10 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 3: goto $r7 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     default: goto $r19 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>; }; };	tableswitch(b3) {     case 0: goto $r16 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 1: goto $r13 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 2: goto $r10 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 3: goto $r7 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     default: goto $r19 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>; };	$r13 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;	$r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke $r14.<java.lang.String: java.lang.String trim()>();	interfaceinvoke $r13.<org.slf4j.Logger: void debug(java.lang.String)>($r15);	goto [?= return null];	return null
;block_num 6