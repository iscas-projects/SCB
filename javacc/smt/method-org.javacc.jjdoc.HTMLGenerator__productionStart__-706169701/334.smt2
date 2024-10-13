(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var400 0)
(declare-sort var3530 0)
(declare-sort var1701 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1701_getOneTable/272529343 () Bool)
(declare-fun println/-1852303283 (var400 String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLhs/-759107248 (var3530) String)
(declare-fun get_id/-836140651 (var400 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-855496625 (var400 String) void)
(declare-const null-var400 var400)
(declare-const null-var3530 var3530)
(declare-const var1473 var400) ; Statement: r0 := @this: org.javacc.jjdoc.HTMLGenerator 
(assert (not (= var1473 null-var400)))
(declare-const var1486 var3530) ; Statement: r2 := @parameter0: org.javacc.parser.NormalProduction 
(assert (not (= var1486 null-var3530)))
(define-const var3456 Bool var1701_getOneTable/272529343) ; Statement: $z0 = staticinvoke <org.javacc.jjdoc.JJDocOptions: boolean getOneTable()>() 
 ; Statement: if $z0 != 0 goto specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<TR>") 
(assert (not (= (ite var3456 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (println/-1852303283 var1473 "<TR>")) ; Statement: specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<TR>") 

(declare-const var1473!1 var400)
(declare-const var3315 String)
(define-const var3603 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3603)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3603!1 String)
(assert (= var3603!1 ""))
(assert true)
(define-const var649 String (append/672562846 var3603!1 "<TD ALIGN=RIGHT VALIGN=BASELINE><A NAME=\u0022")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<TD ALIGN=RIGHT VALIGN=BASELINE><A NAME=\"") 
(declare-const var3603!2 String)
(assert (= var3603!2 (str.++ var3603!1 "<TD ALIGN=RIGHT VALIGN=BASELINE><A NAME=\u0022")))
(assert true)
(define-const var1416 String (getLhs/-759107248 var1486)) ; Statement: $r3 = virtualinvoke r2.<org.javacc.parser.NormalProduction: java.lang.String getLhs()>() 
(assert true)
(define-const var2224 String (get_id/-836140651 var1473!1 var1416)) ; Statement: $r4 = virtualinvoke r0.<org.javacc.jjdoc.HTMLGenerator: java.lang.String get_id(java.lang.String)>($r3) 
(assert true)
(define-const var572 String (append/672562846 var649 var2224)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var649!1 String)
(assert (= var649!1 (str.++ var649 var2224)))
(assert true)
(define-const var1421 String (append/672562846 var572 "\u0022>")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\">") 
(declare-const var572!1 String)
(assert (= var572!1 (str.++ var572 "\u0022>")))
(assert true)
(define-const var1424 String (getLhs/-759107248 var1486)) ; Statement: $r7 = virtualinvoke r2.<org.javacc.parser.NormalProduction: java.lang.String getLhs()>() 
(assert true)
(define-const var3347 String (append/672562846 var1421 var1424)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1421!1 String)
(assert (= var1421!1 (str.++ var1421 var1424)))
(assert true)
(define-const var1230 String (append/672562846 var3347 "</A></TD>")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</A></TD>") 
(declare-const var3347!1 String)
(assert (= var3347!1 (str.++ var3347 "</A></TD>")))
(assert true)
(define-const var2537 String (toString/-2075883882 var1230)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1852303283 var1473!1 var2537)) ; Statement: specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>($r11) 

(declare-const var1473!2 var400)
(declare-const var2537!1 String)
(assert true)
;(assert (println/-1852303283 var1473!2 "<TD ALIGN=CENTER VALIGN=BASELINE>::=</TD>")) ; Statement: specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<TD ALIGN=CENTER VALIGN=BASELINE>::=</TD>") 

(declare-const var1473!3 var400)
(declare-const var3106 String)
(assert true)
;(assert (print/-855496625 var1473!3 "<TD ALIGN=LEFT VALIGN=BASELINE>")) ; Statement: virtualinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void print(java.lang.String)>("<TD ALIGN=LEFT VALIGN=BASELINE>") 

(declare-const var1473!4 var400)
(declare-const var3846 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1701_getOneTable/272529343=([], boolean), println/-1852303283=([org.javacc.jjdoc.HTMLGenerator, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLhs/-759107248=([org.javacc.parser.NormalProduction], java.lang.String), get_id/-836140651=([org.javacc.jjdoc.HTMLGenerator, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-855496625=([org.javacc.jjdoc.HTMLGenerator, java.lang.String], void)}
; {var400=org.javacc.jjdoc.HTMLGenerator, var1473=r0, var3530=org.javacc.parser.NormalProduction, var1486=r2, var1701=org.javacc.jjdoc.JJDocOptions, var3456=$z0, var3315="<TR>", var3603=$r1, var649=$r5, var1416=$r3, var2224=$r4, var572=$r6, var1421=$r8, var1424=$r7, var3347=$r9, var1230=$r10, var2537=$r11, var3106="<TD ALIGN=CENTER VALIGN=BASELINE>::=</TD>", var3846="<TD ALIGN=LEFT VALIGN=BASELINE>"}
; {org.javacc.jjdoc.HTMLGenerator=var400, r0=var1473, org.javacc.parser.NormalProduction=var3530, r2=var1486, org.javacc.jjdoc.JJDocOptions=var1701, $z0=var3456, "<TR>"=var3315, $r1=var3603, $r5=var649, $r3=var1416, $r4=var2224, $r6=var572, $r8=var1421, $r7=var1424, $r9=var3347, $r10=var1230, $r11=var2537, "<TD ALIGN=CENTER VALIGN=BASELINE>::=</TD>"=var3106, "<TD ALIGN=LEFT VALIGN=BASELINE>"=var3846}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.jjdoc.HTMLGenerator;	r2 := @parameter0: org.javacc.parser.NormalProduction;	$z0 = staticinvoke <org.javacc.jjdoc.JJDocOptions: boolean getOneTable()>();	if $z0 != 0 goto specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<TR>");	specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<TR>");	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<TD ALIGN=RIGHT VALIGN=BASELINE><A NAME=\"");	$r3 = virtualinvoke r2.<org.javacc.parser.NormalProduction: java.lang.String getLhs()>();	$r4 = virtualinvoke r0.<org.javacc.jjdoc.HTMLGenerator: java.lang.String get_id(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\">");	$r7 = virtualinvoke r2.<org.javacc.parser.NormalProduction: java.lang.String getLhs()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</A></TD>");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>($r11);	specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<TD ALIGN=CENTER VALIGN=BASELINE>::=</TD>");	virtualinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void print(java.lang.String)>("<TD ALIGN=LEFT VALIGN=BASELINE>");	return
;block_num 2