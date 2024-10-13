(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1010 0)
(declare-sort var812 0)
(declare-sort var3710 0)
(declare-sort var1653 0)
(declare-sort var2267 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun hash/-1089014572 (var3710 String var812) var812)
(declare-fun cast-from-String-to-var812 (String) var812)
(declare-fun cast-from-var812-to-String (var812) String)
(declare-fun tagType/-493974260 (var3710) var1653)
(declare-fun inline/1150140008 (var1653) Bool)
(declare-fun fn/-835429074 (var3710) String)
(define-fun append/-13659068 ((s String) (tail String)) String (str.++ s tail))
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun log/-1401655580 (var1010) var2267)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var2267_trace/1870688834 (var2267 String) void)
(declare-const null-var1010 var1010)
(declare-const null-var812 var812)
(declare-const null-var3710 var3710)
(declare-const var260 var1010) ; Statement: r6 := @this: com.github.jknack.handlebars.helper.LogHelper 
(assert (not (= var260 null-var1010)))
(declare-const var253 var812) ; Statement: r22 := @parameter0: java.lang.Object 
(assert (not (= var253 null-var812)))
(declare-const var3730 var3710) ; Statement: r1 := @parameter1: com.github.jknack.handlebars.Options 
(assert (not (= var3730 null-var3710)))
(define-const var507 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var507)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var507!1 String)
(assert (= var507!1 ""))
(assert true)
(define-const var2011 var812 (hash/-1089014572 var3730 "level" (cast-from-String-to-var812 "info"))) ; Statement: $r2 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("level", "info") 
(define-const var1886 String (cast-from-var812-to-String var2011)) ; Statement: r3 = (java.lang.String) $r2 
(define-const var923 var1653 (tagType/-493974260 var3730)) ; Statement: r4 = r1.<com.github.jknack.handlebars.Options: com.github.jknack.handlebars.TagType tagType> 
(assert true)
(define-const var1997 Bool (inline/1150140008 var923)) ; Statement: $z0 = virtualinvoke r4.<com.github.jknack.handlebars.TagType: boolean inline()>() 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.CharSequence fn()>() 
(assert (= (ite var1997 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3004 String (fn/-835429074 var3730)) ; Statement: $r5 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.CharSequence fn()>() 
(assert true)
;(assert (append/-13659068 var507!1 var3004)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r5) 
(declare-const var507!2 String)
(assert (str.prefixof var507!1 var507!2))
(assert true) ; Non Conditional
(define-const var733 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var3182 Int (hashCode/-467973558 var1886)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 3641990: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("warn");     case 95458899: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("debug");     case 96784904: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("error");     case 110620997: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("trace");     default: goto tableswitch(b3) {     case 0: goto $r16 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 1: goto $r13 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 2: goto $r10 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 3: goto $r7 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     default: goto $r19 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>; }; } 
(assert (and (not (= var3182 110620997)) (and (not (= var3182 96784904)) (and (not (= var3182 95458899)) (and (not (= var3182 3641990)) true))))) ; Intersect: Negate: Cond: $i0 == 110620997   and Intersect: Negate: Cond: $i0 == 96784904   and Intersect: Negate: Cond: $i0 == 95458899   and Intersect: Negate: Cond: $i0 == 3641990   and Non Conditional    
 ; Statement: tableswitch(b3) {     case 0: goto $r16 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 1: goto $r13 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 2: goto $r10 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 3: goto $r7 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     default: goto $r19 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>; } 
(assert (and (= var733 3) (and (not (= var733 2)) (and (not (= var733 1)) (and (not (= var733 0)) true))))) ; Intersect: Cond: b3 == 3  and Intersect: Negate: Cond: b3 == 2   and Intersect: Negate: Cond: b3 == 1   and Intersect: Negate: Cond: b3 == 0   and Non Conditional    
(define-const var2465 var2267 (log/-1401655580 var260)) ; Statement: $r7 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log> 
(assert true)
(define-const var1539 String (toString/-2075883882 var507!2)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3668 String (trim/-847153721 var1539)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String trim()>() 
;(assert (var2267_trace/1870688834 var2465 var3668)) ; Statement: interfaceinvoke $r7.<org.slf4j.Logger: void trace(java.lang.String)>($r9) 

(declare-const var2465!1 var2267)
(declare-const var3668!1 String)
 ; Statement: goto [?= return null] 
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), hash/-1089014572=([com.github.jknack.handlebars.Options, java.lang.String, java.lang.Object], java.lang.Object), cast-from-String-to-var812=([java.lang.String], java.lang.Object), cast-from-var812-to-String=([java.lang.Object], java.lang.String), tagType/-493974260=([com.github.jknack.handlebars.Options], com.github.jknack.handlebars.TagType), inline/1150140008=([com.github.jknack.handlebars.TagType], boolean), fn/-835429074=([com.github.jknack.handlebars.Options], java.lang.CharSequence), append/-13659068=([java.lang.StringBuilder, java.lang.CharSequence], java.lang.StringBuilder), hashCode/-467973558=([java.lang.String], int), log/-1401655580=([com.github.jknack.handlebars.helper.LogHelper], org.slf4j.Logger), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), var2267_trace/1870688834=([org.slf4j.Logger, java.lang.String], void)}
; {var1010=com.github.jknack.handlebars.helper.LogHelper, var260=r6, var812=java.lang.Object, var253=r22, var3710=com.github.jknack.handlebars.Options, var3730=r1, var507=$r0, var2011=$r2, var1886=r3, var1653=com.github.jknack.handlebars.TagType, var923=r4, var1997=$z0, var3004=$r5, var733=b3, var3182=$i0, var2267=org.slf4j.Logger, var2465=$r7, var1539=$r8, var3668=$r9}
; {com.github.jknack.handlebars.helper.LogHelper=var1010, r6=var260, java.lang.Object=var812, r22=var253, com.github.jknack.handlebars.Options=var3710, r1=var3730, $r0=var507, $r2=var2011, r3=var1886, com.github.jknack.handlebars.TagType=var1653, r4=var923, $z0=var1997, $r5=var3004, b3=var733, $i0=var3182, org.slf4j.Logger=var2267, $r7=var2465, $r8=var1539, $r9=var3668}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>;	<java.lang.String: int hashCode()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>": 1,"<java.lang.String: int hashCode()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r6 := @this: com.github.jknack.handlebars.helper.LogHelper;	r22 := @parameter0: java.lang.Object;	r1 := @parameter1: com.github.jknack.handlebars.Options;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("level", "info");	r3 = (java.lang.String) $r2;	r4 = r1.<com.github.jknack.handlebars.Options: com.github.jknack.handlebars.TagType tagType>;	$z0 = virtualinvoke r4.<com.github.jknack.handlebars.TagType: boolean inline()>();	if $z0 == 0 goto $r5 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.CharSequence fn()>();	$r5 = virtualinvoke r1.<com.github.jknack.handlebars.Options: java.lang.CharSequence fn()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r5);	b3 = -1;	$i0 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 3641990: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("warn");     case 95458899: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("debug");     case 96784904: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("error");     case 110620997: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("trace");     default: goto tableswitch(b3) {     case 0: goto $r16 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 1: goto $r13 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 2: goto $r10 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 3: goto $r7 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     default: goto $r19 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>; }; };	tableswitch(b3) {     case 0: goto $r16 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 1: goto $r13 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 2: goto $r10 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     case 3: goto $r7 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;     default: goto $r19 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>; };	$r7 = r6.<com.github.jknack.handlebars.helper.LogHelper: org.slf4j.Logger log>;	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String trim()>();	interfaceinvoke $r7.<org.slf4j.Logger: void trace(java.lang.String)>($r9);	goto [?= return null];	return null
;block_num 6