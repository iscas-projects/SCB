(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1720 0)
(declare-sort var2917 0)
(declare-sort var394 0)
(declare-sort var2569 0)
(declare-sort var597 0)
(declare-sort var2761 0)
(declare-sort var347 0)
(declare-sort var3245 0)
(declare-sort var2889 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var394_getIndex/1123102020 (var394) Int)
(declare-fun cast-from-var2917-to-var394 (var2917) var394)
(declare-fun var2569-init () var2569)
(declare-fun <init>/-201242697 (var2569) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var394_current/2028364674 (var394) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var597) String)
(declare-fun cast-from-String-to-var597 (String) var597)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setLength/1276735992 (String Int) void)
(declare-fun var347_entrySet/1101202697 (var347) var2761)
(declare-fun cast-from-var2569-to-var347 (var2569) var347)
(declare-fun var2761_iterator/1911472585 (var2761) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun append/991902413 (String Float32) String)
(declare-fun log/-1110529256 (var1720) var3245)
(declare-fun println/69091442 (var3245 var597) void)
(declare-fun var394_setIndex/-1155921654 (var394 Int) Int)
(declare-fun g2D/-1110529256 (var1720) var2889)
(declare-fun drawString/-1710209627 (var2889 var2917 Float32 Float32) void)
(declare-const null-var1720 var1720)
(declare-const null-var2917 var2917)
(declare-const null-Float32 Float32)
(declare-const var3279 var1720) ; Statement: r13 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var3279 null-var1720)))
(declare-const var2514 var2917) ; Statement: r0 := @parameter0: java.text.AttributedCharacterIterator 
(assert (not (= var2514 null-var2917)))
(declare-const var2910 Float32) ; Statement: f0 := @parameter1: float 
(assert (not (= var2910 null-Float32)))
(declare-const var3158 Float32) ; Statement: f1 := @parameter2: float 
(assert (not (= var3158 null-Float32)))
(define-const var3355 Int (var394_getIndex/1123102020 (cast-from-var2917-to-var394 var2514))) ; Statement: i0 = interfaceinvoke r0.<java.text.AttributedCharacterIterator: int getIndex()>() 
(define-const var920 var2569 var2569-init) ; Statement: $r53 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var920)) ; Statement: specialinvoke $r53.<java.util.HashMap: void <init>()>() 

(declare-const var920!1 var2569)
(define-const var2082 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2082)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2082!1 String)
(assert (= var2082!1 ""))
(define-const var3156 Int (var394_current/2028364674 (cast-from-var2917-to-var394 var2514))) ; Statement: c5 = interfaceinvoke r0.<java.text.AttributedCharacterIterator: char current()>() 
(assert true) ; Non Conditional
(define-const var2906 Int (cast-from-Int-to-Int var3156)) ; Statement: $i8 = (int) c5 
(define-const var77 Int (cast-from-Int-to-Int 65535)) ; Statement: $i10 = (int) 65535 
 ; Statement: if $i8 == $i10 goto $r55 = new java.lang.StringBuilder 
(assert (= var2906 var77)) ; Cond: $i8 == $i10 
(define-const var401 String String-init) ; Statement: $r55 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var401)) ; Statement: specialinvoke $r55.<java.lang.StringBuilder: void <init>()>() 
(declare-const var401!1 String)
(assert (= var401!1 ""))
(assert true)
(define-const var2950 String (append/672562846 var401!1 "AttributedString as = new AttributedString(\u0022")) ; Statement: $r4 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("AttributedString as = new AttributedString(\"") 
(declare-const var401!2 String)
(assert (= var401!2 (str.++ var401!1 "AttributedString as = new AttributedString(\u0022")))
(assert true)
(define-const var1428 String (append/-1031950772 var2950 (cast-from-String-to-var597 var2082!1))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r54) 
(declare-const var2950!1 String)
(assert (str.prefixof var2950 var2950!1))
(assert true)
(define-const var956 String (append/672562846 var1428 "\u0022);\n")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\");\n") 
(declare-const var1428!1 String)
(assert (= var1428!1 (str.++ var1428 "\u0022);\n")))
(assert true)
(define-const var857 String (toString/-2075883882 var956)) ; Statement: r51 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setLength/1276735992 var2082!1 0)) ; Statement: virtualinvoke $r54.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var2082!2 String)
(declare-const var2659 Int)
(assert true)
;(assert (append/672562846 var2082!2 var857)) ; Statement: virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var2082!3 String)
(assert (= var2082!3 (str.++ var2082!2 var857)))
(define-const var900 var2761 (var347_entrySet/1101202697 (cast-from-var2569-to-var347 var920!1))) ; Statement: $r7 = interfaceinvoke $r53.<java.util.Map: java.util.Set entrySet()>() 
(define-const var1570 Iterator (var2761_iterator/1911472585 var900)) ; Statement: r8 = interfaceinvoke $r7.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1494 Bool (Iterator_hasNext/-1669924200 var1570)) ; Statement: $z0 = interfaceinvoke r8.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r9 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.drawString(as.getIterator(),") 
(assert (= (ite var1494 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var480 String (append/672562846 var2082!3 "g.drawString(as.getIterator(),")) ; Statement: $r9 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.drawString(as.getIterator(),") 
(declare-const var2082!4 String)
(assert (= var2082!4 (str.++ var2082!3 "g.drawString(as.getIterator(),")))
(assert true)
(define-const var2286 String (append/991902413 var480 var2910)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>(f0) 
(declare-const var480!1 String)
(assert (str.prefixof var480 var480!1))
(assert true)
(define-const var1235 String (append/672562846 var2286 "f,")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("f,") 
(declare-const var2286!1 String)
(assert (= var2286!1 (str.++ var2286 "f,")))
(assert true)
(define-const var598 String (append/991902413 var1235 var3158)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>(f1) 
(declare-const var1235!1 String)
(assert (str.prefixof var1235 var1235!1))
(assert true)
;(assert (append/672562846 var598 "f);")) ; Statement: virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("f);") 
(declare-const var598!1 String)
(assert (= var598!1 (str.++ var598 "f);")))
(define-const var3484 var3245 (log/-1110529256 var3279)) ; Statement: $r14 = r13.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/69091442 var3484 (cast-from-String-to-var597 var2082!4))) ; Statement: virtualinvoke $r14.<java.io.PrintStream: void println(java.lang.Object)>($r54) 

(declare-const var3484!1 var3245)
(declare-const var2082!5 String)
;(assert (var394_setIndex/-1155921654 (cast-from-var2917-to-var394 var2514) var3355)) ; Statement: interfaceinvoke r0.<java.text.AttributedCharacterIterator: char setIndex(int)>(i0) 

(declare-const var2514!1 var2917)
(declare-const var3355!1 Int)
(define-const var3558 var2889 (g2D/-1110529256 var3279)) ; Statement: $r15 = r13.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (drawString/-1710209627 var3558 var2514!1 var2910 var3158)) ; Statement: virtualinvoke $r15.<java.awt.Graphics2D: void drawString(java.text.AttributedCharacterIterator,float,float)>(r0, f0, f1) 

(declare-const var3558!1 var2889)
(declare-const var2514!2 var2917)
(declare-const var2910!1 Float32)
(declare-const var3158!1 Float32)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var394_getIndex/1123102020=([java.text.CharacterIterator], int), cast-from-var2917-to-var394=([java.text.AttributedCharacterIterator], java.text.CharacterIterator), var2569-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var394_current/2028364674=([java.text.CharacterIterator], char), cast-from-Int-to-Int=([char], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-String-to-var597=([java.lang.StringBuilder], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setLength/1276735992=([java.lang.StringBuilder, int], void), var347_entrySet/1101202697=([java.util.Map], java.util.Set), cast-from-var2569-to-var347=([java.util.HashMap], java.util.Map), var2761_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), append/991902413=([java.lang.StringBuilder, float], java.lang.StringBuilder), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/69091442=([java.io.PrintStream, java.lang.Object], void), var394_setIndex/-1155921654=([java.text.CharacterIterator, int], char), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), drawString/-1710209627=([java.awt.Graphics2D, java.text.AttributedCharacterIterator, float, float], void)}
; {var1720=org.apache.poi.xslf.util.DummyGraphics2d, var3279=r13, var2917=java.text.AttributedCharacterIterator, var2514=r0, var2910=f0, var3158=f1, var394=java.text.CharacterIterator, var3355=i0, var2569=java.util.HashMap, var920=$r53, var2082=$r54, var3156=c5, var2906=$i8, var77=$i10, var401=$r55, var2950=$r4, var597=java.lang.Object, var1428=$r5, var956=$r6, var857=r51, var2659=0, var2761=java.util.Set, var347=java.util.Map, var900=$r7, var1570=r8, var1494=$z0, var480=$r9, var2286=$r10, var1235=$r11, var598=$r12, var3245=java.io.PrintStream, var3484=$r14, var2889=java.awt.Graphics2D, var3558=$r15}
; {org.apache.poi.xslf.util.DummyGraphics2d=var1720, r13=var3279, java.text.AttributedCharacterIterator=var2917, r0=var2514, f0=var2910, f1=var3158, java.text.CharacterIterator=var394, i0=var3355, java.util.HashMap=var2569, $r53=var920, $r54=var2082, c5=var3156, $i8=var2906, $i10=var77, $r55=var401, $r4=var2950, java.lang.Object=var597, $r5=var1428, $r6=var956, r51=var857, 0=var2659, java.util.Set=var2761, java.util.Map=var347, $r7=var900, r8=var1570, $z0=var1494, $r9=var480, $r10=var2286, $r11=var1235, $r12=var598, java.io.PrintStream=var3245, $r14=var3484, java.awt.Graphics2D=var2889, $r15=var3558}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void setLength(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(float)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(float)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuilder: void setLength(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(float)>": 2}
;stmts r13 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r0 := @parameter0: java.text.AttributedCharacterIterator;	f0 := @parameter1: float;	f1 := @parameter2: float;	i0 = interfaceinvoke r0.<java.text.AttributedCharacterIterator: int getIndex()>();	$r53 = new java.util.HashMap;	specialinvoke $r53.<java.util.HashMap: void <init>()>();	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	c5 = interfaceinvoke r0.<java.text.AttributedCharacterIterator: char current()>();	$i8 = (int) c5;	$i10 = (int) 65535;	if $i8 == $i10 goto $r55 = new java.lang.StringBuilder;	$r55 = new java.lang.StringBuilder;	specialinvoke $r55.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("AttributedString as = new AttributedString(\"");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r54);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\");\n");	r51 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r54.<java.lang.StringBuilder: void setLength(int)>(0);	virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r7 = interfaceinvoke $r53.<java.util.Map: java.util.Set entrySet()>();	r8 = interfaceinvoke $r7.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r8.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r9 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.drawString(as.getIterator(),");	$r9 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("g.drawString(as.getIterator(),");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>(f0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("f,");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>(f1);	virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("f);");	$r14 = r13.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r14.<java.io.PrintStream: void println(java.lang.Object)>($r54);	interfaceinvoke r0.<java.text.AttributedCharacterIterator: char setIndex(int)>(i0);	$r15 = r13.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r15.<java.awt.Graphics2D: void drawString(java.text.AttributedCharacterIterator,float,float)>(r0, f0, f1);	return
;block_num 5