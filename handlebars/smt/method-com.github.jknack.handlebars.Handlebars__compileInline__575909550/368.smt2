(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2197 0)
(declare-sort var1760 0)
(declare-sort var3006 0)
(declare-sort var2008 0)
(declare-sort var3848 0)
(declare-sort var2005 0)
(declare-sort var616 0)
(declare-sort var2386 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3006-init () (Array Int var3006))
(declare-fun var2008_notNull/-1935316562 (var3006 String (Array Int var3006)) var3006)
(declare-fun cast-from-String-to-var3006 (String) var3006)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3848_abs/-1886746561 (Int) Int)
(declare-fun Int_toHexString/1865784998 (Int) String)
(declare-fun var2005-init () var2005)
(declare-fun <init>/-158313959 (var2005 String String) void)
(declare-fun compile/-1992286835 (var2197 var2386 String String) var616)
(declare-fun cast-from-var2005-to-var2386 (var2005) var2386)
(declare-const null-var2197 var2197)
(declare-const null-String String)
(declare-const var1302 var2197) ; Statement: r4 := @this: com.github.jknack.handlebars.Handlebars 
(assert (not (= var1302 null-var2197)))
(declare-const var2423 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2423 null-String)))
(declare-const var3740 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var3740 null-String)))
(declare-const var2393 String) ; Statement: r7 := @parameter2: java.lang.String 
(assert (not (= var2393 null-String)))
(define-const var3591 (Array Int var3006) arr-var3006-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var2008_notNull/-1935316562 (cast-from-String-to-var3006 var2423) "The input is required." var3591)) ; Statement: staticinvoke <org.apache.commons.lang3.Validate: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "The input is required.", $r1) 

(declare-const var2423!1 String)
(declare-const var2414 String)
(declare-const var3591!1 (Array Int var3006))
(assert true)
(define-const var2391 Int (hashCode/-467973558 var2423!1)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
(define-const var3767 Int (var3848_abs/-1886746561 var2391)) ; Statement: $i1 = staticinvoke <java.lang.Math: int abs(int)>($i0) 
(define-const var3780 String (Int_toHexString/1865784998 var3767)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i1) 
(define-const var33 String (str.++ "inline@\u0001" var3780)) ; Statement: r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("inline@\u0001") 
(define-const var60 var2005 var2005-init) ; Statement: $r5 = new com.github.jknack.handlebars.io.StringTemplateSource 
(assert true)
;(assert (<init>/-158313959 var60 var33 var2423!1)) ; Statement: specialinvoke $r5.<com.github.jknack.handlebars.io.StringTemplateSource: void <init>(java.lang.String,java.lang.String)>(r3, r0) 

(declare-const var60!1 var2005)
(declare-const var33!1 String)
(declare-const var2423!2 String)
(assert true)
(define-const var3342 var616 (compile/-1992286835 var1302 (cast-from-var2005-to-var2386 var60!1) var3740 var2393)) ; Statement: $r8 = virtualinvoke r4.<com.github.jknack.handlebars.Handlebars: com.github.jknack.handlebars.Template compile(com.github.jknack.handlebars.io.TemplateSource,java.lang.String,java.lang.String)>($r5, r6, r7) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3006-init=([], java.lang.Object[]), var2008_notNull/-1935316562=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var3006=([java.lang.String], java.lang.Object), hashCode/-467973558=([java.lang.String], int), var3848_abs/-1886746561=([int], int), Int_toHexString/1865784998=([int], java.lang.String), var2005-init=([], com.github.jknack.handlebars.io.StringTemplateSource), <init>/-158313959=([com.github.jknack.handlebars.io.StringTemplateSource, java.lang.String, java.lang.String], void), compile/-1992286835=([com.github.jknack.handlebars.Handlebars, com.github.jknack.handlebars.io.TemplateSource, java.lang.String, java.lang.String], com.github.jknack.handlebars.Template), cast-from-var2005-to-var2386=([com.github.jknack.handlebars.io.StringTemplateSource], com.github.jknack.handlebars.io.TemplateSource)}
; {var2197=com.github.jknack.handlebars.Handlebars, var1302=r4, var2423=r0, var1760=null_type, var3740=r6, var2393=r7, var3006=java.lang.Object, var3591=$r1, var2008=org.apache.commons.lang3.Validate, var2414="The input is required.", var2391=$i0, var3848=java.lang.Math, var3767=$i1, var3780=$r2, var33=r3, var2005=com.github.jknack.handlebars.io.StringTemplateSource, var60=$r5, var616=com.github.jknack.handlebars.Template, var2386=com.github.jknack.handlebars.io.TemplateSource, var3342=$r8}
; {com.github.jknack.handlebars.Handlebars=var2197, r4=var1302, r0=var2423, null_type=var1760, r6=var3740, r7=var2393, java.lang.Object=var3006, $r1=var3591, org.apache.commons.lang3.Validate=var2008, "The input is required."=var2414, $i0=var2391, java.lang.Math=var3848, $i1=var3767, $r2=var3780, r3=var33, com.github.jknack.handlebars.io.StringTemplateSource=var2005, $r5=var60, com.github.jknack.handlebars.Template=var616, com.github.jknack.handlebars.io.TemplateSource=var2386, $r8=var3342}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r4 := @this: com.github.jknack.handlebars.Handlebars;	r0 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	r7 := @parameter2: java.lang.String;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <org.apache.commons.lang3.Validate: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "The input is required.", $r1);	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	$i1 = staticinvoke <java.lang.Math: int abs(int)>($i0);	$r2 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i1);	r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("inline@\u0001");	$r5 = new com.github.jknack.handlebars.io.StringTemplateSource;	specialinvoke $r5.<com.github.jknack.handlebars.io.StringTemplateSource: void <init>(java.lang.String,java.lang.String)>(r3, r0);	$r8 = virtualinvoke r4.<com.github.jknack.handlebars.Handlebars: com.github.jknack.handlebars.Template compile(com.github.jknack.handlebars.io.TemplateSource,java.lang.String,java.lang.String)>($r5, r6, r7);	return $r8
;block_num 1