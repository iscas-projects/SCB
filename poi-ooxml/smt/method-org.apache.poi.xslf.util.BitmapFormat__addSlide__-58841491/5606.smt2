(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3795 0)
(declare-sort var933 0)
(declare-sort var1761 0)
(declare-sort var1974 0)
(declare-sort var1337 0)
(declare-sort var3114 0)
(declare-sort var392 0)
(declare-sort var1371 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun format/-1456724781 (var3795) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var933-init () var933)
(declare-fun cast-from-Float64-to-Int (Float64) Int)
(declare-fun <init>/-97413903 (var933 Int Int Int) void)
(declare-fun img/-1456724781 (var3795) var933)
(declare-fun createGraphics/-1927311584 (var933) var1761)
(declare-fun graphics/-1456724781 (var3795) var1761)
(declare-fun var3114-init () var3114)
(declare-fun <init>/1544051104 (var3114 var392) void)
(declare-fun cast-from-var933-to-var392 (var933) var392)
(declare-fun cast-from-var1974-to-var1371 (var1974) var1371)
(declare-fun setRenderingHint/63402731 (var1761 var1371 var392) void)
(declare-fun cast-from-var3114-to-var392 (var3114) var392)
(declare-const null-var3795 var3795)
(declare-const null-Float64 Float64)
(declare-const var1337-BUFFERED_IMAGE var1974)
(declare-const var2756 var3795) ; Statement: r0 := @this: org.apache.poi.xslf.util.BitmapFormat 
(assert (not (= var2756 null-var3795)))
(declare-const var3533 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var3533 null-Float64)))
(declare-const var2169 Float64) ; Statement: d1 := @parameter1: double 
(assert (not (= var2169 null-Float64)))
(define-const var2366 String (format/-1456724781 var2756)) ; Statement: r1 = r0.<org.apache.poi.xslf.util.BitmapFormat: java.lang.String format> 
(define-const var3768 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var1011 Int (hashCode/-467973558 var2366)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 102340: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("gif");     case 111145: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("png");     default: goto lookupswitch(b3) {     case 0: goto b4 = 2;     case 1: goto b4 = 2;     default: goto b4 = 1; }; } 
(assert (and (not (= var1011 111145)) (and (not (= var1011 102340)) true))) ; Intersect: Negate: Cond: $i0 == 111145   and Intersect: Negate: Cond: $i0 == 102340   and Non Conditional  
 ; Statement: lookupswitch(b3) {     case 0: goto b4 = 2;     case 1: goto b4 = 2;     default: goto b4 = 1; } 
(assert (and (= var3768 0) true)) ; Intersect: Cond: b3 == 0  and Non Conditional 
(define-const var2477 Int 2) ; Statement: b4 = 2 
 ; Statement: goto [?= $r10 = new java.awt.image.BufferedImage] 
(assert true) ; Non Conditional
(define-const var696 var933 var933-init) ; Statement: $r10 = new java.awt.image.BufferedImage 
(define-const var252 Int (cast-from-Float64-to-Int var3533)) ; Statement: $i2 = (int) d0 
(define-const var3776 Int (cast-from-Float64-to-Int var2169)) ; Statement: $i1 = (int) d1 
(assert true)
;(assert (<init>/-97413903 var696 var252 var3776 var2477)) ; Statement: specialinvoke $r10.<java.awt.image.BufferedImage: void <init>(int,int,int)>($i2, $i1, b4) 

(declare-const var696!1 var933)
(declare-const var252!1 Int)
(declare-const var3776!1 Int)
(declare-const var2477!1 Int)
(declare-const var2756!1 var3795)
(assert (not (= var2756!1 null-var3795)))
(assert (= (img/-1456724781 var2756!1) var696!1)) ; Statement: r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.image.BufferedImage img> = $r10 
(define-const var2664 var933 (img/-1456724781 var2756!1)) ; Statement: $r3 = r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.image.BufferedImage img> 
(assert true)
(define-const var195 var1761 (createGraphics/-1927311584 var2664)) ; Statement: $r4 = virtualinvoke $r3.<java.awt.image.BufferedImage: java.awt.Graphics2D createGraphics()>() 
(declare-const var2756!2 var3795)
(assert (not (= var2756!2 null-var3795)))
(assert (= (graphics/-1456724781 var2756!2) var195)) ; Statement: r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.Graphics2D graphics> = $r4 
(define-const var386 var1761 (graphics/-1456724781 var2756!2)) ; Statement: $r7 = r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.Graphics2D graphics> 
(define-const var1570 var1974 var1337-BUFFERED_IMAGE) ; Statement: $r8 = <org.apache.poi.sl.draw.Drawable: org.apache.poi.sl.draw.Drawable$DrawableHint BUFFERED_IMAGE> 
(define-const var3525 var3114 var3114-init) ; Statement: $r11 = new java.lang.ref.WeakReference 
(define-const var1147 var933 (img/-1456724781 var2756!2)) ; Statement: $r6 = r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.image.BufferedImage img> 
(assert true)
;(assert (<init>/1544051104 var3525 (cast-from-var933-to-var392 var1147))) ; Statement: specialinvoke $r11.<java.lang.ref.WeakReference: void <init>(java.lang.Object)>($r6) 

(declare-const var3525!1 var3114)
(declare-const var1147!1 var933)
(define-const var899 var1371 (cast-from-var1974-to-var1371 var1570)) ; Statement: $r12 = (java.awt.RenderingHints$Key) $r8 
(assert true)
;(assert (setRenderingHint/63402731 var386 var899 (cast-from-var3114-to-var392 var3525!1))) ; Statement: virtualinvoke $r7.<java.awt.Graphics2D: void setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)>($r12, $r11) 

(declare-const var386!1 var1761)
(declare-const var899!1 var1371)
(declare-const var3525!2 var3114)
(define-const var1197 var1761 (graphics/-1456724781 var2756!2)) ; Statement: $r9 = r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.Graphics2D graphics> 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {format/-1456724781=([org.apache.poi.xslf.util.BitmapFormat], java.lang.String), hashCode/-467973558=([java.lang.String], int), var933-init=([], java.awt.image.BufferedImage), cast-from-Float64-to-Int=([double], int), <init>/-97413903=([java.awt.image.BufferedImage, int, int, int], void), img/-1456724781=([org.apache.poi.xslf.util.BitmapFormat], java.awt.image.BufferedImage), createGraphics/-1927311584=([java.awt.image.BufferedImage], java.awt.Graphics2D), graphics/-1456724781=([org.apache.poi.xslf.util.BitmapFormat], java.awt.Graphics2D), var3114-init=([], java.lang.ref.WeakReference), <init>/1544051104=([java.lang.ref.WeakReference, java.lang.Object], void), cast-from-var933-to-var392=([java.awt.image.BufferedImage], java.lang.Object), cast-from-var1974-to-var1371=([org.apache.poi.sl.draw.Drawable$DrawableHint], java.awt.RenderingHints$Key), setRenderingHint/63402731=([java.awt.Graphics2D, java.awt.RenderingHints$Key, java.lang.Object], void), cast-from-var3114-to-var392=([java.lang.ref.WeakReference], java.lang.Object)}
; {var3795=org.apache.poi.xslf.util.BitmapFormat, var2756=r0, var3533=d0, var2169=d1, var2366=r1, var3768=b3, var1011=$i0, var2477=b4, var933=java.awt.image.BufferedImage, var696=$r10, var252=$i2, var3776=$i1, var2664=$r3, var1761=java.awt.Graphics2D, var195=$r4, var386=$r7, var1974=org.apache.poi.sl.draw.Drawable$DrawableHint, var1337=org.apache.poi.sl.draw.Drawable, var1570=$r8, var3114=java.lang.ref.WeakReference, var3525=$r11, var1147=$r6, var392=java.lang.Object, var1371=java.awt.RenderingHints$Key, var899=$r12, var1197=$r9}
; {org.apache.poi.xslf.util.BitmapFormat=var3795, r0=var2756, d0=var3533, d1=var2169, r1=var2366, b3=var3768, $i0=var1011, b4=var2477, java.awt.image.BufferedImage=var933, $r10=var696, $i2=var252, $i1=var3776, $r3=var2664, java.awt.Graphics2D=var1761, $r4=var195, $r7=var386, org.apache.poi.sl.draw.Drawable$DrawableHint=var1974, org.apache.poi.sl.draw.Drawable=var1337, $r8=var1570, java.lang.ref.WeakReference=var3114, $r11=var3525, $r6=var1147, java.lang.Object=var392, java.awt.RenderingHints$Key=var1371, $r12=var899, $r9=var1197}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.util.BitmapFormat;	d0 := @parameter0: double;	d1 := @parameter1: double;	r1 = r0.<org.apache.poi.xslf.util.BitmapFormat: java.lang.String format>;	b3 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 102340: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("gif");     case 111145: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("png");     default: goto lookupswitch(b3) {     case 0: goto b4 = 2;     case 1: goto b4 = 2;     default: goto b4 = 1; }; };	lookupswitch(b3) {     case 0: goto b4 = 2;     case 1: goto b4 = 2;     default: goto b4 = 1; };	b4 = 2;	goto [?= $r10 = new java.awt.image.BufferedImage];	$r10 = new java.awt.image.BufferedImage;	$i2 = (int) d0;	$i1 = (int) d1;	specialinvoke $r10.<java.awt.image.BufferedImage: void <init>(int,int,int)>($i2, $i1, b4);	r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.image.BufferedImage img> = $r10;	$r3 = r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.image.BufferedImage img>;	$r4 = virtualinvoke $r3.<java.awt.image.BufferedImage: java.awt.Graphics2D createGraphics()>();	r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.Graphics2D graphics> = $r4;	$r7 = r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.Graphics2D graphics>;	$r8 = <org.apache.poi.sl.draw.Drawable: org.apache.poi.sl.draw.Drawable$DrawableHint BUFFERED_IMAGE>;	$r11 = new java.lang.ref.WeakReference;	$r6 = r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.image.BufferedImage img>;	specialinvoke $r11.<java.lang.ref.WeakReference: void <init>(java.lang.Object)>($r6);	$r12 = (java.awt.RenderingHints$Key) $r8;	virtualinvoke $r7.<java.awt.Graphics2D: void setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)>($r12, $r11);	$r9 = r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.Graphics2D graphics>;	return $r9
;block_num 4