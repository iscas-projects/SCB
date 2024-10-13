(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var416 0)
(declare-sort var53 0)
(declare-sort var93 0)
(declare-sort var2019 0)
(declare-sort var543 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/174188782 (var93) void)
(declare-fun cast-from-var416-to-var93 (var416) var93)
(declare-fun arr-var2019-init () (Array Int var2019))
(declare-fun var543_notNull/-1935316562 (var2019 String (Array Int var2019)) var2019)
(declare-fun cast-from-String-to-var2019 (String) var2019)
(declare-fun cast-from-var2019-to-String (var2019) String)
(declare-fun content/1835483676 (var416) String)
(declare-fun filename/1835483676 (var416) String)
(declare-fun hashCode/-467973558 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun lastModified/1835483676 (var416) Int)
(declare-const null-var416 var416)
(declare-const null-String String)
(declare-const var2065 var416) ; Statement: r0 := @this: com.github.jknack.handlebars.io.StringTemplateSource 
(assert (not (= var2065 null-var416)))
(declare-const var851 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var851 null-String)))
(declare-const var26 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var26 null-String)))
(assert true)
;(assert (<init>/174188782 (cast-from-var416-to-var93 var2065))) ; Statement: specialinvoke r0.<com.github.jknack.handlebars.io.AbstractTemplateSource: void <init>()>() 

(declare-const var2065!1 var416)
(define-const var3230 (Array Int var2019) arr-var2019-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(define-const var2327 var2019 (var543_notNull/-1935316562 (cast-from-String-to-var2019 var26) "The content is required." var3230)) ; Statement: $r3 = staticinvoke <org.apache.commons.lang3.Validate: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r1, "The content is required.", $r2) 
(define-const var660 String (cast-from-var2019-to-String var2327)) ; Statement: $r4 = (java.lang.String) $r3 
(declare-const var2065!2 var416)
(assert (not (= var2065!2 null-var416)))
(assert (= (content/1835483676 var2065!2) var660)) ; Statement: r0.<com.github.jknack.handlebars.io.StringTemplateSource: java.lang.String content> = $r4 
(define-const var2381 (Array Int var2019) arr-var2019-init) ; Statement: $r6 = newarray (java.lang.Object)[0] 
(define-const var3548 var2019 (var543_notNull/-1935316562 (cast-from-String-to-var2019 var851) "The filename is required." var2381)) ; Statement: $r7 = staticinvoke <org.apache.commons.lang3.Validate: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r5, "The filename is required.", $r6) 
(define-const var1687 String (cast-from-var2019-to-String var3548)) ; Statement: $r8 = (java.lang.String) $r7 
(declare-const var2065!3 var416)
(assert (not (= var2065!3 null-var416)))
(assert (= (filename/1835483676 var2065!3) var1687)) ; Statement: r0.<com.github.jknack.handlebars.io.StringTemplateSource: java.lang.String filename> = $r8 
(assert true)
(define-const var1967 Int (hashCode/-467973558 var26)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
(define-const var3816 Int (cast-from-Int-to-Int var1967)) ; Statement: $l1 = (long) $i0 
(declare-const var2065!4 var416)
(assert (not (= var2065!4 null-var416)))
(assert (= (lastModified/1835483676 var2065!4) var3816)) ; Statement: r0.<com.github.jknack.handlebars.io.StringTemplateSource: long lastModified> = $l1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/174188782=([com.github.jknack.handlebars.io.AbstractTemplateSource], void), cast-from-var416-to-var93=([com.github.jknack.handlebars.io.StringTemplateSource], com.github.jknack.handlebars.io.AbstractTemplateSource), arr-var2019-init=([], java.lang.Object[]), var543_notNull/-1935316562=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var2019=([java.lang.String], java.lang.Object), cast-from-var2019-to-String=([java.lang.Object], java.lang.String), content/1835483676=([com.github.jknack.handlebars.io.StringTemplateSource], java.lang.String), filename/1835483676=([com.github.jknack.handlebars.io.StringTemplateSource], java.lang.String), hashCode/-467973558=([java.lang.String], int), cast-from-Int-to-Int=([int], long), lastModified/1835483676=([com.github.jknack.handlebars.io.StringTemplateSource], long)}
; {var416=com.github.jknack.handlebars.io.StringTemplateSource, var2065=r0, var851=r5, var53=null_type, var26=r1, var93=com.github.jknack.handlebars.io.AbstractTemplateSource, var2019=java.lang.Object, var3230=$r2, var543=org.apache.commons.lang3.Validate, var2327=$r3, var660=$r4, var2381=$r6, var3548=$r7, var1687=$r8, var1967=$i0, var3816=$l1}
; {com.github.jknack.handlebars.io.StringTemplateSource=var416, r0=var2065, r5=var851, null_type=var53, r1=var26, com.github.jknack.handlebars.io.AbstractTemplateSource=var93, java.lang.Object=var2019, $r2=var3230, org.apache.commons.lang3.Validate=var543, $r3=var2327, $r4=var660, $r6=var2381, $r7=var3548, $r8=var1687, $i0=var1967, $l1=var3816}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.io.StringTemplateSource;	r5 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	specialinvoke r0.<com.github.jknack.handlebars.io.AbstractTemplateSource: void <init>()>();	$r2 = newarray (java.lang.Object)[0];	$r3 = staticinvoke <org.apache.commons.lang3.Validate: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r1, "The content is required.", $r2);	$r4 = (java.lang.String) $r3;	r0.<com.github.jknack.handlebars.io.StringTemplateSource: java.lang.String content> = $r4;	$r6 = newarray (java.lang.Object)[0];	$r7 = staticinvoke <org.apache.commons.lang3.Validate: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r5, "The filename is required.", $r6);	$r8 = (java.lang.String) $r7;	r0.<com.github.jknack.handlebars.io.StringTemplateSource: java.lang.String filename> = $r8;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	$l1 = (long) $i0;	r0.<com.github.jknack.handlebars.io.StringTemplateSource: long lastModified> = $l1;	return
;block_num 1