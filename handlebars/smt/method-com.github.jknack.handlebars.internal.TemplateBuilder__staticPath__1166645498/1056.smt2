(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3474 0)
(declare-sort var2635 0)
(declare-sort var1663 0)
(declare-sort var2287 0)
(declare-sort var3943 0)
(declare-sort var3818 0)
(declare-sort var2402 0)
(declare-sort var3711 0)
(declare-sort var368 0)
(declare-sort var3207 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2635_getText/-195748462 (var2635) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var3943-init () var3943)
(declare-fun <init>/-578139722 (var3943) void)
(declare-fun token/-1755045971 (var3943) var2635)
(declare-fun var3818-init () var3818)
(declare-fun handlebars/564043682 (var3474) var2402)
(declare-fun <init>/-639333308 (var3818 var2402 String) void)
(declare-fun cast-from-var3818-to-var3711 (var3818) var3711)
(declare-fun path/-1755045971 (var3943) var3711)
(declare-fun hash/-459617955 (var3474 var2287) var368)
(declare-fun hash/-1755045971 (var3943) var368)
(declare-fun var3207_getText/-774604558 (var3207) String)
(declare-fun cast-from-var1663-to-var3207 (var1663) var3207)
(declare-fun context/-1755045971 (var3943) String)
(declare-const null-var3474 var3474)
(declare-const null-var2635 var2635)
(declare-const null-var1663 var1663)
(declare-const null-var2287 var2287)
(declare-const null-var3943 var3943)
(declare-const var3159 var3474) ; Statement: r3 := @this: com.github.jknack.handlebars.internal.TemplateBuilder 
(assert (not (= var3159 null-var3474)))
(declare-const var3466 var2635) ; Statement: r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.Token 
(assert (not (= var3466 null-var2635)))
(declare-const var2533 var1663) ; Statement: r7 := @parameter1: com.github.jknack.handlebars.internal.antlr.tree.TerminalNode 
(assert (not (= var2533 null-var1663)))
(declare-const var834 var2287) ; Statement: r5 := @parameter2: java.util.List 
(assert (not (= var834 null-var2287)))
(define-const var3084 String (var2635_getText/-195748462 var3466)) ; Statement: r8 = interfaceinvoke r0.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(assert (and true (and (> (str.len var3084) 0) (<= 0 0))))
(define-const var1347 Int (charAt/698050440 var3084 0)) ; Statement: $c0 = virtualinvoke r8.<java.lang.String: char charAt(int)>(0) 
(define-const var2956 Int (cast-from-Int-to-Int var1347)) ; Statement: $i7 = (int) $c0 
 ; Statement: if $i7 == 91 goto $i5 = virtualinvoke r8.<java.lang.String: int length()>() 
(assert (= var2956 91)) ; Cond: $i7 == 91 
(assert true)
(define-const var1842 Int (length/-134980193 var3084)) ; Statement: $i5 = virtualinvoke r8.<java.lang.String: int length()>() 
(define-const var3327 Int (- var1842 1)) ; Statement: $i6 = $i5 - 1 
(assert (and true (and (>= 1 0) (>= (str.len var3084) var3327) (>= var3327 1))))
(define-const var3084!1 String (substring/-1240304868 var3084 1 var3327)) ; Statement: r8 = virtualinvoke r8.<java.lang.String: java.lang.String substring(int,int)>(1, $i6) 
(assert true) ; Non Conditional
(assert true)
(define-const var3965 Bool (startsWith/-1785782452 var3084!1 "/")) ; Statement: $z0 = virtualinvoke r8.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r10 = new com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo 
(assert (= (ite var3965 1 0) 0)) ; Cond: $z0 == 0 
(define-const var934 var3943 var3943-init) ; Statement: $r10 = new com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo 
(assert true)
;(assert (<init>/-578139722 var934)) ; Statement: specialinvoke $r10.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: void <init>()>() 

(declare-const var934!1 var3943)
(declare-const var934!2 var3943)
(assert (not (= var934!2 null-var3943)))
(assert (= (token/-1755045971 var934!2) var3466)) ; Statement: $r10.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: com.github.jknack.handlebars.internal.antlr.Token token> = r0 
(define-const var1588 var3818 var3818-init) ; Statement: $r11 = new com.github.jknack.handlebars.internal.Text 
(define-const var2934 var2402 (handlebars/564043682 var3159)) ; Statement: $r4 = r3.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Handlebars handlebars> 
(assert true)
;(assert (<init>/-639333308 var1588 var2934 var3084!1)) ; Statement: specialinvoke $r11.<com.github.jknack.handlebars.internal.Text: void <init>(com.github.jknack.handlebars.Handlebars,java.lang.String)>($r4, r8) 

(declare-const var1588!1 var3818)
(declare-const var2934!1 var2402)
(declare-const var3084!2 String)
(declare-const var934!3 var3943)
(assert (not (= var934!3 null-var3943)))
(assert (= (path/-1755045971 var934!3) (cast-from-var3818-to-var3711 var1588!1))) ; Statement: $r10.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: com.github.jknack.handlebars.Template path> = $r11 
(assert true)
(define-const var3362 var368 (hash/-459617955 var3159 var834)) ; Statement: $r6 = virtualinvoke r3.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.Map hash(java.util.List)>(r5) 
(declare-const var934!4 var3943)
(assert (not (= var934!4 null-var3943)))
(assert (= (hash/-1755045971 var934!4) var3362)) ; Statement: $r10.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: java.util.Map hash> = $r6 
 ; Statement: if r7 == null goto $r9 = null 
(assert (not (= var2533 null-var1663))) ; Negate: Cond: r7 == null  
(define-const var3622 String (var3207_getText/-774604558 (cast-from-var1663-to-var3207 var2533))) ; Statement: $r9 = interfaceinvoke r7.<com.github.jknack.handlebars.internal.antlr.tree.TerminalNode: java.lang.String getText()>() 
 ; Statement: goto [?= $r10.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: java.lang.String context> = $r9] 
(assert true) ; Non Conditional
(declare-const var934!5 var3943)
(assert (not (= var934!5 null-var3943)))
(assert (= (context/-1755045971 var934!5) var3622)) ; Statement: $r10.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: java.lang.String context> = $r9 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var2635_getText/-195748462=([com.github.jknack.handlebars.internal.antlr.Token], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var3943-init=([], com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo), <init>/-578139722=([com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo], void), token/-1755045971=([com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo], com.github.jknack.handlebars.internal.antlr.Token), var3818-init=([], com.github.jknack.handlebars.internal.Text), handlebars/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], com.github.jknack.handlebars.Handlebars), <init>/-639333308=([com.github.jknack.handlebars.internal.Text, com.github.jknack.handlebars.Handlebars, java.lang.String], void), cast-from-var3818-to-var3711=([com.github.jknack.handlebars.internal.Text], com.github.jknack.handlebars.Template), path/-1755045971=([com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo], com.github.jknack.handlebars.Template), hash/-459617955=([com.github.jknack.handlebars.internal.TemplateBuilder, java.util.List], java.util.Map), hash/-1755045971=([com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo], java.util.Map), var3207_getText/-774604558=([com.github.jknack.handlebars.internal.antlr.tree.ParseTree], java.lang.String), cast-from-var1663-to-var3207=([com.github.jknack.handlebars.internal.antlr.tree.TerminalNode], com.github.jknack.handlebars.internal.antlr.tree.ParseTree), context/-1755045971=([com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo], java.lang.String)}
; {var3474=com.github.jknack.handlebars.internal.TemplateBuilder, var3159=r3, var2635=com.github.jknack.handlebars.internal.antlr.Token, var3466=r0, var1663=com.github.jknack.handlebars.internal.antlr.tree.TerminalNode, var2533=r7, var2287=java.util.List, var834=r5, var3084=r8, var1347=$c0, var2956=$i7, var1842=$i5, var3327=$i6, var3965=$z0, var3943=com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo, var934=$r10, var3818=com.github.jknack.handlebars.internal.Text, var1588=$r11, var2402=com.github.jknack.handlebars.Handlebars, var2934=$r4, var3711=com.github.jknack.handlebars.Template, var368=java.util.Map, var3362=$r6, var3207=com.github.jknack.handlebars.internal.antlr.tree.ParseTree, var3622=$r9}
; {com.github.jknack.handlebars.internal.TemplateBuilder=var3474, r3=var3159, com.github.jknack.handlebars.internal.antlr.Token=var2635, r0=var3466, com.github.jknack.handlebars.internal.antlr.tree.TerminalNode=var1663, r7=var2533, java.util.List=var2287, r5=var834, r8=var3084, $c0=var1347, $i7=var2956, $i5=var1842, $i6=var3327, $z0=var3965, com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo=var3943, $r10=var934, com.github.jknack.handlebars.internal.Text=var3818, $r11=var1588, com.github.jknack.handlebars.Handlebars=var2402, $r4=var2934, com.github.jknack.handlebars.Template=var3711, java.util.Map=var368, $r6=var3362, com.github.jknack.handlebars.internal.antlr.tree.ParseTree=var3207, $r9=var3622}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r3 := @this: com.github.jknack.handlebars.internal.TemplateBuilder;	r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.Token;	r7 := @parameter1: com.github.jknack.handlebars.internal.antlr.tree.TerminalNode;	r5 := @parameter2: java.util.List;	r8 = interfaceinvoke r0.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	$c0 = virtualinvoke r8.<java.lang.String: char charAt(int)>(0);	$i7 = (int) $c0;	if $i7 == 91 goto $i5 = virtualinvoke r8.<java.lang.String: int length()>();	$i5 = virtualinvoke r8.<java.lang.String: int length()>();	$i6 = $i5 - 1;	r8 = virtualinvoke r8.<java.lang.String: java.lang.String substring(int,int)>(1, $i6);	$z0 = virtualinvoke r8.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto $r10 = new com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo;	$r10 = new com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo;	specialinvoke $r10.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: void <init>()>();	$r10.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: com.github.jknack.handlebars.internal.antlr.Token token> = r0;	$r11 = new com.github.jknack.handlebars.internal.Text;	$r4 = r3.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Handlebars handlebars>;	specialinvoke $r11.<com.github.jknack.handlebars.internal.Text: void <init>(com.github.jknack.handlebars.Handlebars,java.lang.String)>($r4, r8);	$r10.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: com.github.jknack.handlebars.Template path> = $r11;	$r6 = virtualinvoke r3.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.Map hash(java.util.List)>(r5);	$r10.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: java.util.Map hash> = $r6;	if r7 == null goto $r9 = null;	$r9 = interfaceinvoke r7.<com.github.jknack.handlebars.internal.antlr.tree.TerminalNode: java.lang.String getText()>();	goto [?= $r10.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: java.lang.String context> = $r9];	$r10.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: java.lang.String context> = $r9;	return $r10
;block_num 6