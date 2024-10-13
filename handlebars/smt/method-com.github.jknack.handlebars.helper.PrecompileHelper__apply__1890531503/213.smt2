(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2895 0)
(declare-sort var3984 0)
(declare-sort var2130 0)
(declare-sort var2959 0)
(declare-sort var2237 0)
(declare-sort var1857 0)
(declare-sort var461 0)
(declare-sort var879 0)
(declare-sort var3052 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2959-init () (Array Int var2959))
(declare-fun cast-from-String-to-var2959 (String) var2959)
(declare-fun var2237_notEmpty/1384193294 (String String (Array Int var2959)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun hash/-1089014572 (var2130 String var2959) var2959)
(declare-fun cast-from-var2959-to-String (var2959) String)
(declare-fun var1857_wrapper/-1779941591 (String) var1857)
(declare-fun var1857_values/1004381443 () (Array Int var1857))
(declare-fun var461_join/-159404207 ((Array Int var2959) String) String)
(declare-fun cast-from-__Array__Int__var1857__-to-__Array__Int__var2959__ ((Array Int var1857)) (Array Int var2959))
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-fun var2237_notNull/-1935316562 (var2959 String (Array Int var2959)) var2959)
(declare-fun cast-from-var1857-to-var2959 (var1857) var2959)
(declare-fun handlebars/-493974260 (var2130) var879)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun precompile/-1295339397 (var879 String) String)
(declare-fun var3052-init () var3052)
(declare-fun wrap/1194732164 (var1857 String String) String)
(declare-fun <init>/-35122668 (var3052 String) void)
(declare-const null-var2895 var2895)
(declare-const null-String String)
(declare-const null-var2130 var2130)
(declare-const null-__Array__Int__var2959__ (Array Int var2959))
(declare-const var1857-AMD var1857)
(declare-const var1226 var2895) ; Statement: r17 := @this: com.github.jknack.handlebars.helper.PrecompileHelper 
(assert (not (= var1226 null-var2895)))
(declare-const var1305 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1305 null-String)))
(declare-const var674 var2130) ; Statement: r2 := @parameter1: com.github.jknack.handlebars.Options 
(assert (not (= var674 null-var2130)))
(define-const var3205 (Array Int var2959) arr-var2959-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var3205!1 (Array Int var2959))
(assert (not (= var3205!1 null-__Array__Int__var2959__)))
(assert (= (select var3205!1 0) (cast-from-String-to-var2959 var1305))) ; Statement: $r1[0] = r0 
;(assert (var2237_notEmpty/1384193294 (cast-from-String-to-String var1305) "found: \u0027%s\u0027, expected \u0027template path\u0027" var3205!1)) ; Statement: staticinvoke <org.apache.commons.lang3.Validate: java.lang.CharSequence notEmpty(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "found: \'%s\', expected \'template path\'", $r1) 

(declare-const var1305!1 String)
(declare-const var3632 String)
(declare-const var3205!2 (Array Int var2959))
(assert true)
(define-const var3500 var2959 (hash/-1089014572 var674 "wrapper" (cast-from-String-to-var2959 "anonymous"))) ; Statement: $r3 = virtualinvoke r2.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("wrapper", "anonymous") 
(define-const var2579 String (cast-from-var2959-to-String var3500)) ; Statement: r4 = (java.lang.String) $r3 
(define-const var3424 var1857 (var1857_wrapper/-1779941591 var2579)) ; Statement: r5 = staticinvoke <com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper: com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper wrapper(java.lang.String)>(r4) 
(define-const var2473 (Array Int var2959) arr-var2959-init) ; Statement: $r6 = newarray (java.lang.Object)[2] 
(declare-const var2473!1 (Array Int var2959))
(assert (not (= var2473!1 null-__Array__Int__var2959__)))
(assert (= (select var2473!1 0) (cast-from-String-to-var2959 var2579))) ; Statement: $r6[0] = r4 
(define-const var776 (Array Int var1857) var1857_values/1004381443) ; Statement: $r7 = staticinvoke <com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper: com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper[] values()>() 
(define-const var96 String (var461_join/-159404207 (cast-from-__Array__Int__var1857__-to-__Array__Int__var2959__ var776) ", ")) ; Statement: $r8 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String join(java.lang.Object[],java.lang.String)>($r7, ", ") 
(assert true)
(define-const var1674 String (toLowerCase/415700667 var96)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String toLowerCase()>() 
(declare-const var2473!2 (Array Int var2959))
(assert (not (= var2473!2 null-__Array__Int__var2959__)))
(assert (= (select var2473!2 1) (cast-from-String-to-var2959 var1674))) ; Statement: $r6[1] = $r9 
;(assert (var2237_notNull/-1935316562 (cast-from-var1857-to-var2959 var3424) "found \u0027%s\u0027, expected: \u0027%s\u0027" var2473!2)) ; Statement: staticinvoke <org.apache.commons.lang3.Validate: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r5, "found \'%s\', expected: \'%s\'", $r6) 

(declare-const var3424!1 var1857)
(declare-const var3297 String)
(declare-const var2473!3 (Array Int var2959))
(define-const var1940 var879 (handlebars/-493974260 var674)) ; Statement: r10 = r2.<com.github.jknack.handlebars.Options: com.github.jknack.handlebars.Handlebars handlebars> 
(define-const var1949 String var1305!1) ; Statement: r18 = r0 
(assert true)
(define-const var1064 Bool (startsWith/-1785782452 var1305!1 "/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r11 = <com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper: com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper AMD> 
(assert (= (ite var1064 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1584 var1857 var1857-AMD) ; Statement: $r11 = <com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper: com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper AMD> 
 ; Statement: if r5 != $r11 goto $r16 = virtualinvoke r10.<com.github.jknack.handlebars.Handlebars: java.lang.String precompile(java.lang.String)>(r0) 
(assert (not (= var3424!1 var1584))) ; Cond: r5 != $r11 
(assert true)
(define-const var2055 String (precompile/-1295339397 var1940 var1305!1)) ; Statement: $r16 = virtualinvoke r10.<com.github.jknack.handlebars.Handlebars: java.lang.String precompile(java.lang.String)>(r0) 
(define-const var251 var3052 var3052-init) ; Statement: $r12 = new com.github.jknack.handlebars.Handlebars$SafeString 
(assert true)
(define-const var2189 String (wrap/1194732164 var3424!1 var1949 var2055)) ; Statement: $r13 = virtualinvoke r5.<com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper: java.lang.CharSequence wrap(java.lang.String,java.lang.String)>(r18, $r16) 
(assert true)
;(assert (<init>/-35122668 var251 var2189)) ; Statement: specialinvoke $r12.<com.github.jknack.handlebars.Handlebars$SafeString: void <init>(java.lang.CharSequence)>($r13) 

(declare-const var251!1 var3052)
(declare-const var2189!1 String)
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2959-init=([], java.lang.Object[]), cast-from-String-to-var2959=([java.lang.String], java.lang.Object), var2237_notEmpty/1384193294=([java.lang.CharSequence, java.lang.String, java.lang.Object[]], java.lang.CharSequence), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), hash/-1089014572=([com.github.jknack.handlebars.Options, java.lang.String, java.lang.Object], java.lang.Object), cast-from-var2959-to-String=([java.lang.Object], java.lang.String), var1857_wrapper/-1779941591=([java.lang.String], com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper), var1857_values/1004381443=([], com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper[]), var461_join/-159404207=([java.lang.Object[], java.lang.String], java.lang.String), cast-from-__Array__Int__var1857__-to-__Array__Int__var2959__=([com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper[]], java.lang.Object[]), toLowerCase/415700667=([java.lang.String], java.lang.String), var2237_notNull/-1935316562=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-var1857-to-var2959=([com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper], java.lang.Object), handlebars/-493974260=([com.github.jknack.handlebars.Options], com.github.jknack.handlebars.Handlebars), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), precompile/-1295339397=([com.github.jknack.handlebars.Handlebars, java.lang.String], java.lang.String), var3052-init=([], com.github.jknack.handlebars.Handlebars$SafeString), wrap/1194732164=([com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper, java.lang.String, java.lang.String], java.lang.CharSequence), <init>/-35122668=([com.github.jknack.handlebars.Handlebars$SafeString, java.lang.CharSequence], void)}
; {var2895=com.github.jknack.handlebars.helper.PrecompileHelper, var1226=r17, var1305=r0, var3984=null_type, var2130=com.github.jknack.handlebars.Options, var674=r2, var2959=java.lang.Object, var3205=$r1, var2237=org.apache.commons.lang3.Validate, var3632="found: \'%s\', expected \'template path\'", var3500=$r3, var2579=r4, var1857=com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper, var3424=r5, var2473=$r6, var776=$r7, var461=org.apache.commons.lang3.StringUtils, var96=$r8, var1674=$r9, var3297="found \'%s\', expected: \'%s\'", var879=com.github.jknack.handlebars.Handlebars, var1940=r10, var1949=r18, var1064=$z0, var1584=$r11, var2055=$r16, var3052=com.github.jknack.handlebars.Handlebars$SafeString, var251=$r12, var2189=$r13}
; {com.github.jknack.handlebars.helper.PrecompileHelper=var2895, r17=var1226, r0=var1305, null_type=var3984, com.github.jknack.handlebars.Options=var2130, r2=var674, java.lang.Object=var2959, $r1=var3205, org.apache.commons.lang3.Validate=var2237, "found: \'%s\', expected \'template path\'"=var3632, $r3=var3500, r4=var2579, com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper=var1857, r5=var3424, $r6=var2473, $r7=var776, org.apache.commons.lang3.StringUtils=var461, $r8=var96, $r9=var1674, "found \'%s\', expected: \'%s\'"=var3297, com.github.jknack.handlebars.Handlebars=var879, r10=var1940, r18=var1949, $z0=var1064, $r11=var1584, $r16=var2055, com.github.jknack.handlebars.Handlebars$SafeString=var3052, $r12=var251, $r13=var2189}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r17 := @this: com.github.jknack.handlebars.helper.PrecompileHelper;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: com.github.jknack.handlebars.Options;	$r1 = newarray (java.lang.Object)[1];	$r1[0] = r0;	staticinvoke <org.apache.commons.lang3.Validate: java.lang.CharSequence notEmpty(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "found: \'%s\', expected \'template path\'", $r1);	$r3 = virtualinvoke r2.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("wrapper", "anonymous");	r4 = (java.lang.String) $r3;	r5 = staticinvoke <com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper: com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper wrapper(java.lang.String)>(r4);	$r6 = newarray (java.lang.Object)[2];	$r6[0] = r4;	$r7 = staticinvoke <com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper: com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper[] values()>();	$r8 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String join(java.lang.Object[],java.lang.String)>($r7, ", ");	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String toLowerCase()>();	$r6[1] = $r9;	staticinvoke <org.apache.commons.lang3.Validate: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r5, "found \'%s\', expected: \'%s\'", $r6);	r10 = r2.<com.github.jknack.handlebars.Options: com.github.jknack.handlebars.Handlebars handlebars>;	r18 = r0;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto $r11 = <com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper: com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper AMD>;	$r11 = <com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper: com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper AMD>;	if r5 != $r11 goto $r16 = virtualinvoke r10.<com.github.jknack.handlebars.Handlebars: java.lang.String precompile(java.lang.String)>(r0);	$r16 = virtualinvoke r10.<com.github.jknack.handlebars.Handlebars: java.lang.String precompile(java.lang.String)>(r0);	$r12 = new com.github.jknack.handlebars.Handlebars$SafeString;	$r13 = virtualinvoke r5.<com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper: java.lang.CharSequence wrap(java.lang.String,java.lang.String)>(r18, $r16);	specialinvoke $r12.<com.github.jknack.handlebars.Handlebars$SafeString: void <init>(java.lang.CharSequence)>($r13);	return $r12
;block_num 3