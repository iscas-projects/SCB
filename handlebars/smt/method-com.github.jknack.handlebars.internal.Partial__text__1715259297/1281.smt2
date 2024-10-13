(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var680 0)
(declare-sort var3214 0)
(declare-sort var3851 0)
(declare-sort var2652 0)
(declare-sort var1221 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun path/-734774174 (var680) var3214)
(declare-fun var3214_text/-1007103349 (var3214) String)
(declare-fun String-init () String)
(declare-fun startDelimiter/-734774174 (var680) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun context/-734774174 (var680) String)
(declare-fun params/-1588764717 (var1221) var2652)
(declare-fun cast-from-var680-to-var1221 (var680) var1221)
(declare-fun paramsToString/1912981027 (var1221 var2652) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun hashToString/826253629 (var1221) String)
(declare-fun endDelimiter/-734774174 (var680) String)
(declare-fun partial/-734774174 (var680) var3214)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var680 var680)
(declare-const null-String String)
(declare-const null-var3214 var3214)
(declare-const var1442 var680) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.Partial 
(assert (not (= var1442 null-var680)))
(define-const var355 var3214 (path/-734774174 var1442)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.Template path> 
(define-const var2219 String (var3214_text/-1007103349 var355)) ; Statement: r2 = interfaceinvoke $r1.<com.github.jknack.handlebars.Template: java.lang.String text()>() 
(define-const var2302 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(define-const var2024 String (startDelimiter/-734774174 var1442)) ; Statement: $r4 = r0.<com.github.jknack.handlebars.internal.Partial: java.lang.String startDelimiter> 
(assert true)
;(assert (<init>/-1061048412 var2302 var2024)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4) 
(declare-const var2302!1 String)
(assert (= var2302!1 var2024))
(assert true)
(define-const var1224 String (append/-1166366385 var2302!1 62)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var2302!2 String)
(assert (str.prefixof var2302!1 var2302!2))
(assert true)
(define-const var1874 String (append/672562846 var1224 var2219)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1224!1 String)
(assert (= var1224!1 (str.++ var1224 var2219)))
(define-const var3343 String (context/-734774174 var1442)) ; Statement: $r7 = r0.<com.github.jknack.handlebars.internal.Partial: java.lang.String context> 
 ; Statement: if $r7 == null goto $r8 = r0.<com.github.jknack.handlebars.internal.Partial: java.util.List params> 
(assert (= var3343 null-String)) ; Cond: $r7 == null 
(define-const var1558 var2652 (params/-1588764717 (cast-from-var680-to-var1221 var1442))) ; Statement: $r8 = r0.<com.github.jknack.handlebars.internal.Partial: java.util.List params> 
(assert true)
(define-const var1 String (paramsToString/1912981027 (cast-from-var680-to-var1221 var1442) var1558)) ; Statement: $r26 = virtualinvoke r0.<com.github.jknack.handlebars.internal.Partial: java.lang.String paramsToString(java.util.List)>($r8) 
(assert true)
(define-const var2113 Int (length/-134980193 var1)) ; Statement: $i0 = virtualinvoke $r26.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r23 = virtualinvoke r0.<com.github.jknack.handlebars.internal.Partial: java.lang.String hashToString()>() 
(assert (<= var2113 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var3589 String (hashToString/826253629 (cast-from-var680-to-var1221 var1442))) ; Statement: $r23 = virtualinvoke r0.<com.github.jknack.handlebars.internal.Partial: java.lang.String hashToString()>() 
(assert true)
(define-const var2322 Int (length/-134980193 var3589)) ; Statement: $i1 = virtualinvoke $r23.<java.lang.String: int length()>() 
 ; Statement: if $i1 <= 0 goto $r9 = r0.<com.github.jknack.handlebars.internal.Partial: java.lang.String endDelimiter> 
(assert (<= var2322 0)) ; Cond: $i1 <= 0 
(define-const var536 String (endDelimiter/-734774174 var1442)) ; Statement: $r9 = r0.<com.github.jknack.handlebars.internal.Partial: java.lang.String endDelimiter> 
(assert true)
;(assert (append/672562846 var1874 var536)) ; Statement: virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1874!1 String)
(assert (= var1874!1 (str.++ var1874 var536)))
(define-const var3729 var3214 (partial/-734774174 var1442)) ; Statement: $r10 = r0.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.Template partial> 
 ; Statement: if $r10 == null goto $r11 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var3729 null-var3214)) ; Cond: $r10 == null 
(assert true)
(define-const var1508 String (toString/-2075883882 var1874!1)) ; Statement: $r11 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {path/-734774174=([com.github.jknack.handlebars.internal.Partial], com.github.jknack.handlebars.Template), var3214_text/-1007103349=([com.github.jknack.handlebars.Template], java.lang.String), String-init=([], java.lang.StringBuilder), startDelimiter/-734774174=([com.github.jknack.handlebars.internal.Partial], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), context/-734774174=([com.github.jknack.handlebars.internal.Partial], java.lang.String), params/-1588764717=([com.github.jknack.handlebars.internal.HelperResolver], java.util.List), cast-from-var680-to-var1221=([com.github.jknack.handlebars.internal.Partial], com.github.jknack.handlebars.internal.HelperResolver), paramsToString/1912981027=([com.github.jknack.handlebars.internal.HelperResolver, java.util.List], java.lang.String), length/-134980193=([java.lang.String], int), hashToString/826253629=([com.github.jknack.handlebars.internal.HelperResolver], java.lang.String), endDelimiter/-734774174=([com.github.jknack.handlebars.internal.Partial], java.lang.String), partial/-734774174=([com.github.jknack.handlebars.internal.Partial], com.github.jknack.handlebars.Template), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var680=com.github.jknack.handlebars.internal.Partial, var1442=r0, var3214=com.github.jknack.handlebars.Template, var355=$r1, var2219=r2, var2302=$r3, var2024=$r4, var1224=$r5, var1874=r6, var3343=$r7, var3851=null_type, var2652=java.util.List, var1221=com.github.jknack.handlebars.internal.HelperResolver, var1558=$r8, var1=$r26, var2113=$i0, var3589=$r23, var2322=$i1, var536=$r9, var3729=$r10, var1508=$r11}
; {com.github.jknack.handlebars.internal.Partial=var680, r0=var1442, com.github.jknack.handlebars.Template=var3214, $r1=var355, r2=var2219, $r3=var2302, $r4=var2024, $r5=var1224, r6=var1874, $r7=var3343, null_type=var3851, java.util.List=var2652, com.github.jknack.handlebars.internal.HelperResolver=var1221, $r8=var1558, $r26=var1, $i0=var2113, $r23=var3589, $i1=var2322, $r9=var536, $r10=var3729, $r11=var1508}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.Partial;	$r1 = r0.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.Template path>;	r2 = interfaceinvoke $r1.<com.github.jknack.handlebars.Template: java.lang.String text()>();	$r3 = new java.lang.StringBuilder;	$r4 = r0.<com.github.jknack.handlebars.internal.Partial: java.lang.String startDelimiter>;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r7 = r0.<com.github.jknack.handlebars.internal.Partial: java.lang.String context>;	if $r7 == null goto $r8 = r0.<com.github.jknack.handlebars.internal.Partial: java.util.List params>;	$r8 = r0.<com.github.jknack.handlebars.internal.Partial: java.util.List params>;	$r26 = virtualinvoke r0.<com.github.jknack.handlebars.internal.Partial: java.lang.String paramsToString(java.util.List)>($r8);	$i0 = virtualinvoke $r26.<java.lang.String: int length()>();	if $i0 <= 0 goto $r23 = virtualinvoke r0.<com.github.jknack.handlebars.internal.Partial: java.lang.String hashToString()>();	$r23 = virtualinvoke r0.<com.github.jknack.handlebars.internal.Partial: java.lang.String hashToString()>();	$i1 = virtualinvoke $r23.<java.lang.String: int length()>();	if $i1 <= 0 goto $r9 = r0.<com.github.jknack.handlebars.internal.Partial: java.lang.String endDelimiter>;	$r9 = r0.<com.github.jknack.handlebars.internal.Partial: java.lang.String endDelimiter>;	virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r10 = r0.<com.github.jknack.handlebars.internal.Partial: com.github.jknack.handlebars.Template partial>;	if $r10 == null goto $r11 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 5