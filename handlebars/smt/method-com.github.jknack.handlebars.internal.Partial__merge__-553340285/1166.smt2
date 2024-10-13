(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2353 0)
(declare-sort var1162 0)
(declare-sort var1487 0)
(declare-sort var225 0)
(declare-sort var1492 0)
(declare-sort var798 0)
(declare-sort var2014 0)
(declare-sort var3726 0)
(declare-sort var2890 0)
(declare-sort var1922 0)
(declare-sort var835 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun path/-734774174 (var2353) var225)
(declare-fun arr-var798-init () (Array Int var798))
(declare-fun loader/-734774174 (var2353) var2014)
(declare-fun var225_text/-1007103349 (var225) String)
(declare-fun var2014_resolve/-2095195700 (var2014 String) String)
(declare-fun cast-from-String-to-var798 (String) var798)
(declare-fun getMessage/849299655 (var3726) String)
(declare-fun cast-from-var1492-to-var3726 (var1492) var3726)
(declare-fun String_format/1339386452 (String (Array Int var798)) String)
(declare-fun filename/-452065238 (var2890) String)
(declare-fun cast-from-var2353-to-var2890 (var2353) var2890)
(declare-fun line/-452065238 (var2890) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var798 (Int) var798)
(declare-fun column/-452065238 (var2890) Int)
(declare-fun var1922-init () var1922)
(declare-fun text/1715259297 (var2353) String)
(declare-fun <init>/-1514878111 (var1922 String Int Int String String String) void)
(declare-fun var835-init () var835)
(declare-fun <init>/-2128942556 (var835 var1922) void)
(declare-const null-var2353 var2353)
(declare-const null-var1162 var1162)
(declare-const null-var1487 var1487)
(declare-const null-var1492 var1492)
(declare-const null-__Array__Int__var798__ (Array Int var798))
(declare-const var2576 var2353) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.Partial 
(assert (not (= var2576 null-var2353)))
(declare-const var743 var1162) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.Context 
(assert (not (= var743 null-var1162)))
(declare-const var1215 var1487) ; Statement: r11 := @parameter1: java.io.Writer 
(assert (not (= var1215 null-var1487)))
(define-const var1575 var225 (path/-734774174 var2576)) ; Statement: $r2 = r0.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.Template path> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3677 var1492) ; Statement: $r48 := @caughtexception 
(assert (not (= var3677 null-var1492)))
(define-const var3568 (Array Int var798) arr-var798-init) ; Statement: $r49 = newarray (java.lang.Object)[2] 
(define-const var1651 var2014 (loader/-734774174 var2576)) ; Statement: $r51 = r0.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.io.TemplateLoader loader> 
(define-const var1615 var225 (path/-734774174 var2576)) ; Statement: $r50 = r0.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.Template path> 
(define-const var1865 String (var225_text/-1007103349 var1615)) ; Statement: $r52 = interfaceinvoke $r50.<com.github.jknack.handlebars.Template: java.lang.String text()>() 
(define-const var2428 String (var2014_resolve/-2095195700 var1651 var1865)) ; Statement: $r53 = interfaceinvoke $r51.<com.github.jknack.handlebars.io.TemplateLoader: java.lang.String resolve(java.lang.String)>($r52) 
(declare-const var3568!1 (Array Int var798))
(assert (not (= var3568!1 null-__Array__Int__var798__)))
(assert (= (select var3568!1 0) (cast-from-String-to-var798 var2428))) ; Statement: $r49[0] = $r53 
(assert true)
(define-const var1279 String (getMessage/849299655 (cast-from-var1492-to-var3726 var3677))) ; Statement: $r54 = virtualinvoke $r48.<java.io.IOException: java.lang.String getMessage()>() 
(declare-const var3568!2 (Array Int var798))
(assert (not (= var3568!2 null-__Array__Int__var798__)))
(assert (= (select var3568!2 1) (cast-from-String-to-var798 var1279))) ; Statement: $r49[1] = $r54 
(define-const var1355 String (String_format/1339386452 "The partial \u0027%s\u0027 at \u0027%s\u0027 could not be found" var3568!2)) ; Statement: r82 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The partial \'%s\' at \'%s\' could not be found", $r49) 
(define-const var1589 (Array Int var798) arr-var798-init) ; Statement: $r55 = newarray (java.lang.Object)[4] 
(define-const var1063 String (filename/-452065238 (cast-from-var2353-to-var2890 var2576))) ; Statement: $r56 = r0.<com.github.jknack.handlebars.internal.Partial: java.lang.String filename> 
(declare-const var1589!1 (Array Int var798))
(assert (not (= var1589!1 null-__Array__Int__var798__)))
(assert (= (select var1589!1 0) (cast-from-String-to-var798 var1063))) ; Statement: $r55[0] = $r56 
(define-const var2302 Int (line/-452065238 (cast-from-var2353-to-var2890 var2576))) ; Statement: $i6 = r0.<com.github.jknack.handlebars.internal.Partial: int line> 
(define-const var3191 Int (Int_valueOf/-1371140006 var2302)) ; Statement: $r57 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i6) 
(declare-const var1589!2 (Array Int var798))
(assert (not (= var1589!2 null-__Array__Int__var798__)))
(assert (= (select var1589!2 1) (cast-from-Int-to-var798 var3191))) ; Statement: $r55[1] = $r57 
(define-const var1735 Int (column/-452065238 (cast-from-var2353-to-var2890 var2576))) ; Statement: $i7 = r0.<com.github.jknack.handlebars.internal.Partial: int column> 
(define-const var2546 Int (Int_valueOf/-1371140006 var1735)) ; Statement: $r58 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i7) 
(declare-const var1589!3 (Array Int var798))
(assert (not (= var1589!3 null-__Array__Int__var798__)))
(assert (= (select var1589!3 2) (cast-from-Int-to-var798 var2546))) ; Statement: $r55[2] = $r58 
(declare-const var1589!4 (Array Int var798))
(assert (not (= var1589!4 null-__Array__Int__var798__)))
(assert (= (select var1589!4 3) (cast-from-String-to-var798 var1355))) ; Statement: $r55[3] = r82 
(define-const var2416 String (String_format/1339386452 "%s:%s:%s: %s" var1589!4)) ; Statement: r83 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s:%s:%s: %s", $r55) 
(define-const var2179 var1922 var1922-init) ; Statement: $r59 = new com.github.jknack.handlebars.HandlebarsError 
(define-const var517 String (filename/-452065238 (cast-from-var2353-to-var2890 var2576))) ; Statement: $r60 = r0.<com.github.jknack.handlebars.internal.Partial: java.lang.String filename> 
(define-const var282 Int (line/-452065238 (cast-from-var2353-to-var2890 var2576))) ; Statement: $i8 = r0.<com.github.jknack.handlebars.internal.Partial: int line> 
(define-const var3920 Int (column/-452065238 (cast-from-var2353-to-var2890 var2576))) ; Statement: $i9 = r0.<com.github.jknack.handlebars.internal.Partial: int column> 
(assert true)
(define-const var3769 String (text/1715259297 var2576)) ; Statement: $r61 = virtualinvoke r0.<com.github.jknack.handlebars.internal.Partial: java.lang.String text()>() 
(assert true)
;(assert (<init>/-1514878111 var2179 var517 var282 var3920 var1355 var3769 var2416)) ; Statement: specialinvoke $r59.<com.github.jknack.handlebars.HandlebarsError: void <init>(java.lang.String,int,int,java.lang.String,java.lang.String,java.lang.String)>($r60, $i8, $i9, r82, $r61, r83) 

(declare-const var2179!1 var1922)
(declare-const var517!1 String)
(declare-const var282!1 Int)
(declare-const var3920!1 Int)
(declare-const var1355!1 String)
(declare-const var3769!1 String)
(declare-const var2416!1 String)
(define-const var2472 var835 var835-init) ; Statement: $r62 = new com.github.jknack.handlebars.HandlebarsException 
(assert true)
;(assert (<init>/-2128942556 var2472 var2179!1)) ; Statement: specialinvoke $r62.<com.github.jknack.handlebars.HandlebarsException: void <init>(com.github.jknack.handlebars.HandlebarsError)>($r59) 

(declare-const var2472!1 var835)
(declare-const var2179!2 var1922)
 ; Statement: throw $r62 
(check-sat)
(get-model)
(get-unsat-core)
; {path/-734774174=([com.github.jknack.handlebars.internal.Partial], com.github.jknack.handlebars.Template), arr-var798-init=([], java.lang.Object[]), loader/-734774174=([com.github.jknack.handlebars.internal.Partial], com.github.jknack.handlebars.io.TemplateLoader), var225_text/-1007103349=([com.github.jknack.handlebars.Template], java.lang.String), var2014_resolve/-2095195700=([com.github.jknack.handlebars.io.TemplateLoader, java.lang.String], java.lang.String), cast-from-String-to-var798=([java.lang.String], java.lang.Object), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1492-to-var3726=([java.io.IOException], java.lang.Throwable), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), filename/-452065238=([com.github.jknack.handlebars.internal.BaseTemplate], java.lang.String), cast-from-var2353-to-var2890=([com.github.jknack.handlebars.internal.Partial], com.github.jknack.handlebars.internal.BaseTemplate), line/-452065238=([com.github.jknack.handlebars.internal.BaseTemplate], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var798=([java.lang.Integer], java.lang.Object), column/-452065238=([com.github.jknack.handlebars.internal.BaseTemplate], int), var1922-init=([], com.github.jknack.handlebars.HandlebarsError), text/1715259297=([com.github.jknack.handlebars.internal.Partial], java.lang.String), <init>/-1514878111=([com.github.jknack.handlebars.HandlebarsError, java.lang.String, int, int, java.lang.String, java.lang.String, java.lang.String], void), var835-init=([], com.github.jknack.handlebars.HandlebarsException), <init>/-2128942556=([com.github.jknack.handlebars.HandlebarsException, com.github.jknack.handlebars.HandlebarsError], void)}
; {var2353=com.github.jknack.handlebars.internal.Partial, var2576=r0, var1162=com.github.jknack.handlebars.Context, var743=r1, var1487=java.io.Writer, var1215=r11, var225=com.github.jknack.handlebars.Template, var1575=$r2, var1492=java.io.IOException, var3677=$r48, var798=java.lang.Object, var3568=$r49, var2014=com.github.jknack.handlebars.io.TemplateLoader, var1651=$r51, var1615=$r50, var1865=$r52, var2428=$r53, var3726=java.lang.Throwable, var1279=$r54, var1355=r82, var1589=$r55, var2890=com.github.jknack.handlebars.internal.BaseTemplate, var1063=$r56, var2302=$i6, var3191=$r57, var1735=$i7, var2546=$r58, var2416=r83, var1922=com.github.jknack.handlebars.HandlebarsError, var2179=$r59, var517=$r60, var282=$i8, var3920=$i9, var3769=$r61, var835=com.github.jknack.handlebars.HandlebarsException, var2472=$r62}
; {com.github.jknack.handlebars.internal.Partial=var2353, r0=var2576, com.github.jknack.handlebars.Context=var1162, r1=var743, java.io.Writer=var1487, r11=var1215, com.github.jknack.handlebars.Template=var225, $r2=var1575, java.io.IOException=var1492, $r48=var3677, java.lang.Object=var798, $r49=var3568, com.github.jknack.handlebars.io.TemplateLoader=var2014, $r51=var1651, $r50=var1615, $r52=var1865, $r53=var2428, java.lang.Throwable=var3726, $r54=var1279, r82=var1355, $r55=var1589, com.github.jknack.handlebars.internal.BaseTemplate=var2890, $r56=var1063, $i6=var2302, $r57=var3191, $i7=var1735, $r58=var2546, r83=var2416, com.github.jknack.handlebars.HandlebarsError=var1922, $r59=var2179, $r60=var517, $i8=var282, $i9=var3920, $r61=var3769, com.github.jknack.handlebars.HandlebarsException=var835, $r62=var2472}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 2}
;stmts r0 := @this: com.github.jknack.handlebars.internal.Partial;	r1 := @parameter0: com.github.jknack.handlebars.Context;	r11 := @parameter1: java.io.Writer;	$r2 = r0.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.Template path>;	$r48 := @caughtexception;	$r49 = newarray (java.lang.Object)[2];	$r51 = r0.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.io.TemplateLoader loader>;	$r50 = r0.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.Template path>;	$r52 = interfaceinvoke $r50.<com.github.jknack.handlebars.Template: java.lang.String text()>();	$r53 = interfaceinvoke $r51.<com.github.jknack.handlebars.io.TemplateLoader: java.lang.String resolve(java.lang.String)>($r52);	$r49[0] = $r53;	$r54 = virtualinvoke $r48.<java.io.IOException: java.lang.String getMessage()>();	$r49[1] = $r54;	r82 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The partial \'%s\' at \'%s\' could not be found", $r49);	$r55 = newarray (java.lang.Object)[4];	$r56 = r0.<com.github.jknack.handlebars.internal.Partial: java.lang.String filename>;	$r55[0] = $r56;	$i6 = r0.<com.github.jknack.handlebars.internal.Partial: int line>;	$r57 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i6);	$r55[1] = $r57;	$i7 = r0.<com.github.jknack.handlebars.internal.Partial: int column>;	$r58 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i7);	$r55[2] = $r58;	$r55[3] = r82;	r83 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s:%s:%s: %s", $r55);	$r59 = new com.github.jknack.handlebars.HandlebarsError;	$r60 = r0.<com.github.jknack.handlebars.internal.Partial: java.lang.String filename>;	$i8 = r0.<com.github.jknack.handlebars.internal.Partial: int line>;	$i9 = r0.<com.github.jknack.handlebars.internal.Partial: int column>;	$r61 = virtualinvoke r0.<com.github.jknack.handlebars.internal.Partial: java.lang.String text()>();	specialinvoke $r59.<com.github.jknack.handlebars.HandlebarsError: void <init>(java.lang.String,int,int,java.lang.String,java.lang.String,java.lang.String)>($r60, $i8, $i9, r82, $r61, r83);	$r62 = new com.github.jknack.handlebars.HandlebarsException;	specialinvoke $r62.<com.github.jknack.handlebars.HandlebarsException: void <init>(com.github.jknack.handlebars.HandlebarsError)>($r59);	throw $r62
;block_num 2