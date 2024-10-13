(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3357 0)
(declare-sort var524 0)
(declare-sort var3835 0)
(declare-sort var2508 0)
(declare-sort var708 0)
(declare-sort var2205 0)
(declare-sort var3841 0)
(declare-sort var699 0)
(declare-sort var1880 0)
(declare-sort var2571 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var524_getText/-195748462 (var524) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var708-init () var708)
(declare-fun <init>/-578139722 (var708) void)
(declare-fun token/-1755045971 (var708) var524)
(declare-fun var2205-init () var2205)
(declare-fun handlebars/564043682 (var3357) var3841)
(declare-fun <init>/-639333308 (var2205 var3841 String) void)
(declare-fun cast-from-var2205-to-var699 (var2205) var699)
(declare-fun path/-1755045971 (var708) var699)
(declare-fun hash/-459617955 (var3357 var2508) var1880)
(declare-fun hash/-1755045971 (var708) var1880)
(declare-fun context/-1755045971 (var708) String)
(declare-const null-var3357 var3357)
(declare-const null-var524 var524)
(declare-const null-var3835 var3835)
(declare-const null-var2508 var2508)
(declare-const null-var708 var708)
(declare-const null-String String)
(declare-const var2304 var3357) ; Statement: r3 := @this: com.github.jknack.handlebars.internal.TemplateBuilder 
(assert (not (= var2304 null-var3357)))
(declare-const var58 var524) ; Statement: r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.Token 
(assert (not (= var58 null-var524)))
(declare-const var3763 var3835) ; Statement: r7 := @parameter1: com.github.jknack.handlebars.internal.antlr.tree.TerminalNode 
(assert (not (= var3763 null-var3835)))
(declare-const var1447 var2508) ; Statement: r5 := @parameter2: java.util.List 
(assert (not (= var1447 null-var2508)))
(define-const var646 String (var524_getText/-195748462 var58)) ; Statement: r8 = interfaceinvoke r0.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(assert (and true (and (> (str.len var646) 0) (<= 0 0))))
(define-const var912 Int (charAt/698050440 var646 0)) ; Statement: $c0 = virtualinvoke r8.<java.lang.String: char charAt(int)>(0) 
(define-const var2884 Int (cast-from-Int-to-Int var912)) ; Statement: $i7 = (int) $c0 
 ; Statement: if $i7 == 91 goto $i5 = virtualinvoke r8.<java.lang.String: int length()>() 
(assert (= var2884 91)) ; Cond: $i7 == 91 
(assert true)
(define-const var1846 Int (length/-134980193 var646)) ; Statement: $i5 = virtualinvoke r8.<java.lang.String: int length()>() 
(define-const var3596 Int (- var1846 1)) ; Statement: $i6 = $i5 - 1 
(assert (and true (and (>= 1 0) (>= (str.len var646) var3596) (>= var3596 1))))
(define-const var646!1 String (substring/-1240304868 var646 1 var3596)) ; Statement: r8 = virtualinvoke r8.<java.lang.String: java.lang.String substring(int,int)>(1, $i6) 
(assert true) ; Non Conditional
(assert true)
(define-const var615 Bool (startsWith/-1785782452 var646!1 "/")) ; Statement: $z0 = virtualinvoke r8.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r10 = new com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo 
(assert (= (ite var615 1 0) 0)) ; Cond: $z0 == 0 
(define-const var258 var708 var708-init) ; Statement: $r10 = new com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo 
(assert true)
;(assert (<init>/-578139722 var258)) ; Statement: specialinvoke $r10.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: void <init>()>() 

(declare-const var258!1 var708)
(declare-const var258!2 var708)
(assert (not (= var258!2 null-var708)))
(assert (= (token/-1755045971 var258!2) var58)) ; Statement: $r10.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: com.github.jknack.handlebars.internal.antlr.Token token> = r0 
(define-const var2656 var2205 var2205-init) ; Statement: $r11 = new com.github.jknack.handlebars.internal.Text 
(define-const var1817 var3841 (handlebars/564043682 var2304)) ; Statement: $r4 = r3.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Handlebars handlebars> 
(assert true)
;(assert (<init>/-639333308 var2656 var1817 var646!1)) ; Statement: specialinvoke $r11.<com.github.jknack.handlebars.internal.Text: void <init>(com.github.jknack.handlebars.Handlebars,java.lang.String)>($r4, r8) 

(declare-const var2656!1 var2205)
(declare-const var1817!1 var3841)
(declare-const var646!2 String)
(declare-const var258!3 var708)
(assert (not (= var258!3 null-var708)))
(assert (= (path/-1755045971 var258!3) (cast-from-var2205-to-var699 var2656!1))) ; Statement: $r10.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: com.github.jknack.handlebars.Template path> = $r11 
(assert true)
(define-const var3500 var1880 (hash/-459617955 var2304 var1447)) ; Statement: $r6 = virtualinvoke r3.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.Map hash(java.util.List)>(r5) 
(declare-const var258!4 var708)
(assert (not (= var258!4 null-var708)))
(assert (= (hash/-1755045971 var258!4) var3500)) ; Statement: $r10.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: java.util.Map hash> = $r6 
 ; Statement: if r7 == null goto $r9 = null 
(assert (= var3763 null-var3835)) ; Cond: r7 == null 
(define-const var2315 String null-String) ; Statement: $r9 = null 
(assert true) ; Non Conditional
(declare-const var258!5 var708)
(assert (not (= var258!5 null-var708)))
(assert (= (context/-1755045971 var258!5) var2315)) ; Statement: $r10.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: java.lang.String context> = $r9 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var524_getText/-195748462=([com.github.jknack.handlebars.internal.antlr.Token], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var708-init=([], com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo), <init>/-578139722=([com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo], void), token/-1755045971=([com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo], com.github.jknack.handlebars.internal.antlr.Token), var2205-init=([], com.github.jknack.handlebars.internal.Text), handlebars/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], com.github.jknack.handlebars.Handlebars), <init>/-639333308=([com.github.jknack.handlebars.internal.Text, com.github.jknack.handlebars.Handlebars, java.lang.String], void), cast-from-var2205-to-var699=([com.github.jknack.handlebars.internal.Text], com.github.jknack.handlebars.Template), path/-1755045971=([com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo], com.github.jknack.handlebars.Template), hash/-459617955=([com.github.jknack.handlebars.internal.TemplateBuilder, java.util.List], java.util.Map), hash/-1755045971=([com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo], java.util.Map), context/-1755045971=([com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo], java.lang.String)}
; {var3357=com.github.jknack.handlebars.internal.TemplateBuilder, var2304=r3, var524=com.github.jknack.handlebars.internal.antlr.Token, var58=r0, var3835=com.github.jknack.handlebars.internal.antlr.tree.TerminalNode, var3763=r7, var2508=java.util.List, var1447=r5, var646=r8, var912=$c0, var2884=$i7, var1846=$i5, var3596=$i6, var615=$z0, var708=com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo, var258=$r10, var2205=com.github.jknack.handlebars.internal.Text, var2656=$r11, var3841=com.github.jknack.handlebars.Handlebars, var1817=$r4, var699=com.github.jknack.handlebars.Template, var1880=java.util.Map, var3500=$r6, var2571=null_type, var2315=$r9}
; {com.github.jknack.handlebars.internal.TemplateBuilder=var3357, r3=var2304, com.github.jknack.handlebars.internal.antlr.Token=var524, r0=var58, com.github.jknack.handlebars.internal.antlr.tree.TerminalNode=var3835, r7=var3763, java.util.List=var2508, r5=var1447, r8=var646, $c0=var912, $i7=var2884, $i5=var1846, $i6=var3596, $z0=var615, com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo=var708, $r10=var258, com.github.jknack.handlebars.internal.Text=var2205, $r11=var2656, com.github.jknack.handlebars.Handlebars=var3841, $r4=var1817, com.github.jknack.handlebars.Template=var699, java.util.Map=var1880, $r6=var3500, null_type=var2571, $r9=var2315}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r3 := @this: com.github.jknack.handlebars.internal.TemplateBuilder;	r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.Token;	r7 := @parameter1: com.github.jknack.handlebars.internal.antlr.tree.TerminalNode;	r5 := @parameter2: java.util.List;	r8 = interfaceinvoke r0.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	$c0 = virtualinvoke r8.<java.lang.String: char charAt(int)>(0);	$i7 = (int) $c0;	if $i7 == 91 goto $i5 = virtualinvoke r8.<java.lang.String: int length()>();	$i5 = virtualinvoke r8.<java.lang.String: int length()>();	$i6 = $i5 - 1;	r8 = virtualinvoke r8.<java.lang.String: java.lang.String substring(int,int)>(1, $i6);	$z0 = virtualinvoke r8.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto $r10 = new com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo;	$r10 = new com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo;	specialinvoke $r10.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: void <init>()>();	$r10.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: com.github.jknack.handlebars.internal.antlr.Token token> = r0;	$r11 = new com.github.jknack.handlebars.internal.Text;	$r4 = r3.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Handlebars handlebars>;	specialinvoke $r11.<com.github.jknack.handlebars.internal.Text: void <init>(com.github.jknack.handlebars.Handlebars,java.lang.String)>($r4, r8);	$r10.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: com.github.jknack.handlebars.Template path> = $r11;	$r6 = virtualinvoke r3.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.Map hash(java.util.List)>(r5);	$r10.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: java.util.Map hash> = $r6;	if r7 == null goto $r9 = null;	$r9 = null;	$r10.<com.github.jknack.handlebars.internal.TemplateBuilder$PartialInfo: java.lang.String context> = $r9;	return $r10
;block_num 6