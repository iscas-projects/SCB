(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3145 0)
(declare-sort var1710 0)
(declare-sort var2129 0)
(declare-sort var511 0)
(declare-sort var3669 0)
(declare-sort var3370 0)
(declare-sort var1702 0)
(declare-sort var1783 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun format/-1456724781 (var3145) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1710-init () var1710)
(declare-fun cast-from-Float64-to-Int (Float64) Int)
(declare-fun <init>/-97413903 (var1710 Int Int Int) void)
(declare-fun img/-1456724781 (var3145) var1710)
(declare-fun createGraphics/-1927311584 (var1710) var2129)
(declare-fun graphics/-1456724781 (var3145) var2129)
(declare-fun var3370-init () var3370)
(declare-fun <init>/1544051104 (var3370 var1702) void)
(declare-fun cast-from-var1710-to-var1702 (var1710) var1702)
(declare-fun cast-from-var511-to-var1783 (var511) var1783)
(declare-fun setRenderingHint/63402731 (var2129 var1783 var1702) void)
(declare-fun cast-from-var3370-to-var1702 (var3370) var1702)
(declare-const null-var3145 var3145)
(declare-const null-Float64 Float64)
(declare-const var3669-BUFFERED_IMAGE var511)
(declare-const var1331 var3145) ; Statement: r0 := @this: org.apache.poi.xslf.util.BitmapFormat 
(assert (not (= var1331 null-var3145)))
(declare-const var3809 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var3809 null-Float64)))
(declare-const var2406 Float64) ; Statement: d1 := @parameter1: double 
(assert (not (= var2406 null-Float64)))
(define-const var78 String (format/-1456724781 var1331)) ; Statement: r1 = r0.<org.apache.poi.xslf.util.BitmapFormat: java.lang.String format> 
(define-const var1553 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var353 Int (hashCode/-467973558 var78)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 102340: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("gif");     case 111145: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("png");     default: goto lookupswitch(b3) {     case 0: goto b4 = 2;     case 1: goto b4 = 2;     default: goto b4 = 1; }; } 
(assert (and (not (= var353 111145)) (and (not (= var353 102340)) true))) ; Intersect: Negate: Cond: $i0 == 111145   and Intersect: Negate: Cond: $i0 == 102340   and Non Conditional  
 ; Statement: lookupswitch(b3) {     case 0: goto b4 = 2;     case 1: goto b4 = 2;     default: goto b4 = 1; } 
(assert (and (not (= var1553 1)) (and (not (= var1553 0)) true))) ; Intersect: Negate: Cond: b3 == 1   and Intersect: Negate: Cond: b3 == 0   and Non Conditional  
(define-const var3427 Int 1) ; Statement: b4 = 1 
(assert true) ; Non Conditional
(define-const var3371 var1710 var1710-init) ; Statement: $r10 = new java.awt.image.BufferedImage 
(define-const var1638 Int (cast-from-Float64-to-Int var3809)) ; Statement: $i2 = (int) d0 
(define-const var3022 Int (cast-from-Float64-to-Int var2406)) ; Statement: $i1 = (int) d1 
(assert true)
;(assert (<init>/-97413903 var3371 var1638 var3022 var3427)) ; Statement: specialinvoke $r10.<java.awt.image.BufferedImage: void <init>(int,int,int)>($i2, $i1, b4) 

(declare-const var3371!1 var1710)
(declare-const var1638!1 Int)
(declare-const var3022!1 Int)
(declare-const var3427!1 Int)
(declare-const var1331!1 var3145)
(assert (not (= var1331!1 null-var3145)))
(assert (= (img/-1456724781 var1331!1) var3371!1)) ; Statement: r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.image.BufferedImage img> = $r10 
(define-const var2383 var1710 (img/-1456724781 var1331!1)) ; Statement: $r3 = r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.image.BufferedImage img> 
(assert true)
(define-const var1866 var2129 (createGraphics/-1927311584 var2383)) ; Statement: $r4 = virtualinvoke $r3.<java.awt.image.BufferedImage: java.awt.Graphics2D createGraphics()>() 
(declare-const var1331!2 var3145)
(assert (not (= var1331!2 null-var3145)))
(assert (= (graphics/-1456724781 var1331!2) var1866)) ; Statement: r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.Graphics2D graphics> = $r4 
(define-const var1229 var2129 (graphics/-1456724781 var1331!2)) ; Statement: $r7 = r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.Graphics2D graphics> 
(define-const var2843 var511 var3669-BUFFERED_IMAGE) ; Statement: $r8 = <org.apache.poi.sl.draw.Drawable: org.apache.poi.sl.draw.Drawable$DrawableHint BUFFERED_IMAGE> 
(define-const var1512 var3370 var3370-init) ; Statement: $r11 = new java.lang.ref.WeakReference 
(define-const var843 var1710 (img/-1456724781 var1331!2)) ; Statement: $r6 = r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.image.BufferedImage img> 
(assert true)
;(assert (<init>/1544051104 var1512 (cast-from-var1710-to-var1702 var843))) ; Statement: specialinvoke $r11.<java.lang.ref.WeakReference: void <init>(java.lang.Object)>($r6) 

(declare-const var1512!1 var3370)
(declare-const var843!1 var1710)
(define-const var2596 var1783 (cast-from-var511-to-var1783 var2843)) ; Statement: $r12 = (java.awt.RenderingHints$Key) $r8 
(assert true)
;(assert (setRenderingHint/63402731 var1229 var2596 (cast-from-var3370-to-var1702 var1512!1))) ; Statement: virtualinvoke $r7.<java.awt.Graphics2D: void setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)>($r12, $r11) 

(declare-const var1229!1 var2129)
(declare-const var2596!1 var1783)
(declare-const var1512!2 var3370)
(define-const var645 var2129 (graphics/-1456724781 var1331!2)) ; Statement: $r9 = r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.Graphics2D graphics> 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {format/-1456724781=([org.apache.poi.xslf.util.BitmapFormat], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1710-init=([], java.awt.image.BufferedImage), cast-from-Float64-to-Int=([double], int), <init>/-97413903=([java.awt.image.BufferedImage, int, int, int], void), img/-1456724781=([org.apache.poi.xslf.util.BitmapFormat], java.awt.image.BufferedImage), createGraphics/-1927311584=([java.awt.image.BufferedImage], java.awt.Graphics2D), graphics/-1456724781=([org.apache.poi.xslf.util.BitmapFormat], java.awt.Graphics2D), var3370-init=([], java.lang.ref.WeakReference), <init>/1544051104=([java.lang.ref.WeakReference, java.lang.Object], void), cast-from-var1710-to-var1702=([java.awt.image.BufferedImage], java.lang.Object), cast-from-var511-to-var1783=([org.apache.poi.sl.draw.Drawable$DrawableHint], java.awt.RenderingHints$Key), setRenderingHint/63402731=([java.awt.Graphics2D, java.awt.RenderingHints$Key, java.lang.Object], void), cast-from-var3370-to-var1702=([java.lang.ref.WeakReference], java.lang.Object)}
; {var3145=org.apache.poi.xslf.util.BitmapFormat, var1331=r0, var3809=d0, var2406=d1, var78=r1, var1553=b3, var353=$i0, var3427=b4, var1710=java.awt.image.BufferedImage, var3371=$r10, var1638=$i2, var3022=$i1, var2383=$r3, var2129=java.awt.Graphics2D, var1866=$r4, var1229=$r7, var511=org.apache.poi.sl.draw.Drawable$DrawableHint, var3669=org.apache.poi.sl.draw.Drawable, var2843=$r8, var3370=java.lang.ref.WeakReference, var1512=$r11, var843=$r6, var1702=java.lang.Object, var1783=java.awt.RenderingHints$Key, var2596=$r12, var645=$r9}
; {org.apache.poi.xslf.util.BitmapFormat=var3145, r0=var1331, d0=var3809, d1=var2406, r1=var78, b3=var1553, $i0=var353, b4=var3427, java.awt.image.BufferedImage=var1710, $r10=var3371, $i2=var1638, $i1=var3022, $r3=var2383, java.awt.Graphics2D=var2129, $r4=var1866, $r7=var1229, org.apache.poi.sl.draw.Drawable$DrawableHint=var511, org.apache.poi.sl.draw.Drawable=var3669, $r8=var2843, java.lang.ref.WeakReference=var3370, $r11=var1512, $r6=var843, java.lang.Object=var1702, java.awt.RenderingHints$Key=var1783, $r12=var2596, $r9=var645}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.util.BitmapFormat;	d0 := @parameter0: double;	d1 := @parameter1: double;	r1 = r0.<org.apache.poi.xslf.util.BitmapFormat: java.lang.String format>;	b3 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 102340: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("gif");     case 111145: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("png");     default: goto lookupswitch(b3) {     case 0: goto b4 = 2;     case 1: goto b4 = 2;     default: goto b4 = 1; }; };	lookupswitch(b3) {     case 0: goto b4 = 2;     case 1: goto b4 = 2;     default: goto b4 = 1; };	b4 = 1;	$r10 = new java.awt.image.BufferedImage;	$i2 = (int) d0;	$i1 = (int) d1;	specialinvoke $r10.<java.awt.image.BufferedImage: void <init>(int,int,int)>($i2, $i1, b4);	r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.image.BufferedImage img> = $r10;	$r3 = r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.image.BufferedImage img>;	$r4 = virtualinvoke $r3.<java.awt.image.BufferedImage: java.awt.Graphics2D createGraphics()>();	r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.Graphics2D graphics> = $r4;	$r7 = r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.Graphics2D graphics>;	$r8 = <org.apache.poi.sl.draw.Drawable: org.apache.poi.sl.draw.Drawable$DrawableHint BUFFERED_IMAGE>;	$r11 = new java.lang.ref.WeakReference;	$r6 = r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.image.BufferedImage img>;	specialinvoke $r11.<java.lang.ref.WeakReference: void <init>(java.lang.Object)>($r6);	$r12 = (java.awt.RenderingHints$Key) $r8;	virtualinvoke $r7.<java.awt.Graphics2D: void setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)>($r12, $r11);	$r9 = r0.<org.apache.poi.xslf.util.BitmapFormat: java.awt.Graphics2D graphics>;	return $r9
;block_num 4