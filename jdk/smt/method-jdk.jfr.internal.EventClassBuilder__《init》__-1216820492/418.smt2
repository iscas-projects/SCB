(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var362 0)
(declare-sort var3567 0)
(declare-sort var703 0)
(declare-sort var799 0)
(declare-sort var1574 0)
(declare-sort var1028 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var703) void)
(declare-fun cast-from-var362-to-var703 (var362) var703)
(declare-fun var799-init () var799)
(declare-fun <init>/1540647575 (var799 Int) void)
(declare-fun classWriter/36799233 (var362) var799)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var1574) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun fullClassName/36799233 (var362) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1028_getType/1252763484 (String) var1028)
(declare-fun type/36799233 (var362) var1028)
(declare-fun fields/36799233 (var362) var3567)
(declare-fun annotationElements/36799233 (var362) var3567)
(declare-const null-var362 var362)
(declare-const null-var3567 var3567)
(declare-const var362-idCounter var1574)
(declare-const var2855 var362) ; Statement: r0 := @this: jdk.jfr.internal.EventClassBuilder 
(assert (not (= var2855 null-var362)))
(declare-const var1701 var3567) ; Statement: r11 := @parameter0: java.util.List 
(assert (not (= var1701 null-var3567)))
(declare-const var796 var3567) ; Statement: r10 := @parameter1: java.util.List 
(assert (not (= var796 null-var3567)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var362-to-var703 var2855))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2855!1 var362)
(define-const var522 var799 var799-init) ; Statement: $r1 = new jdk.internal.org.objectweb.asm.ClassWriter 
(assert true)
;(assert (<init>/1540647575 var522 3)) ; Statement: specialinvoke $r1.<jdk.internal.org.objectweb.asm.ClassWriter: void <init>(int)>(3) 

(declare-const var522!1 var799)
(declare-const var1909 Int)
(declare-const var2855!2 var362)
(assert (not (= var2855!2 null-var362)))
(assert (= (classWriter/36799233 var2855!2) var522!1)) ; Statement: r0.<jdk.jfr.internal.EventClassBuilder: jdk.internal.org.objectweb.asm.ClassWriter classWriter> = $r1 
(define-const var3185 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3185)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3185!1 String)
(assert (= var3185!1 ""))
(assert true)
(define-const var2721 String (append/672562846 var3185!1 "jdk.jfr.DynamicEvent")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jdk.jfr.DynamicEvent") 
(declare-const var3185!2 String)
(assert (= var3185!2 (str.++ var3185!1 "jdk.jfr.DynamicEvent")))
(define-const var3024 var1574 var362-idCounter) ; Statement: $r3 = <jdk.jfr.internal.EventClassBuilder: java.util.concurrent.atomic.AtomicLong idCounter> 
(assert true)
(define-const var1171 Int (incrementAndGet/636047358 var3024)) ; Statement: $l0 = virtualinvoke $r3.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var1962 String (append/-901862667 var2721 var1171)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2721!1 String)
(assert (str.prefixof var2721 var2721!1))
(assert true)
(define-const var242 String (toString/-2075883882 var1962)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2855!3 var362)
(assert (not (= var2855!3 null-var362)))
(assert (= (fullClassName/36799233 var2855!3) var242)) ; Statement: r0.<jdk.jfr.internal.EventClassBuilder: java.lang.String fullClassName> = $r6 
(define-const var2256 String (fullClassName/36799233 var2855!3)) ; Statement: $r7 = r0.<jdk.jfr.internal.EventClassBuilder: java.lang.String fullClassName> 
(assert true)
(define-const var3479 String (replace/2138489945 var2256 (cast-from-String-to-String ".") (cast-from-String-to-String "/"))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/") 
(define-const var2778 var1028 (var1028_getType/1252763484 var3479)) ; Statement: $r9 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(java.lang.String)>($r8) 
(declare-const var2855!4 var362)
(assert (not (= var2855!4 null-var362)))
(assert (= (type/36799233 var2855!4) var2778)) ; Statement: r0.<jdk.jfr.internal.EventClassBuilder: jdk.internal.org.objectweb.asm.Type type> = $r9 
(declare-const var2855!5 var362)
(assert (not (= var2855!5 null-var362)))
(assert (= (fields/36799233 var2855!5) var796)) ; Statement: r0.<jdk.jfr.internal.EventClassBuilder: java.util.List fields> = r10 
(declare-const var2855!6 var362)
(assert (not (= var2855!6 null-var362)))
(assert (= (annotationElements/36799233 var2855!6) var1701)) ; Statement: r0.<jdk.jfr.internal.EventClassBuilder: java.util.List annotationElements> = r11 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var362-to-var703=([jdk.jfr.internal.EventClassBuilder], java.lang.Object), var799-init=([], jdk.internal.org.objectweb.asm.ClassWriter), <init>/1540647575=([jdk.internal.org.objectweb.asm.ClassWriter, int], void), classWriter/36799233=([jdk.jfr.internal.EventClassBuilder], jdk.internal.org.objectweb.asm.ClassWriter), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), fullClassName/36799233=([jdk.jfr.internal.EventClassBuilder], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1028_getType/1252763484=([java.lang.String], jdk.internal.org.objectweb.asm.Type), type/36799233=([jdk.jfr.internal.EventClassBuilder], jdk.internal.org.objectweb.asm.Type), fields/36799233=([jdk.jfr.internal.EventClassBuilder], java.util.List), annotationElements/36799233=([jdk.jfr.internal.EventClassBuilder], java.util.List)}
; {var362=jdk.jfr.internal.EventClassBuilder, var2855=r0, var3567=java.util.List, var1701=r11, var796=r10, var703=java.lang.Object, var799=jdk.internal.org.objectweb.asm.ClassWriter, var522=$r1, var1909=3, var3185=$r2, var2721=$r4, var1574=java.util.concurrent.atomic.AtomicLong, var3024=$r3, var1171=$l0, var1962=$r5, var242=$r6, var2256=$r7, var3479=$r8, var1028=jdk.internal.org.objectweb.asm.Type, var2778=$r9}
; {jdk.jfr.internal.EventClassBuilder=var362, r0=var2855, java.util.List=var3567, r11=var1701, r10=var796, java.lang.Object=var703, jdk.internal.org.objectweb.asm.ClassWriter=var799, $r1=var522, 3=var1909, $r2=var3185, $r4=var2721, java.util.concurrent.atomic.AtomicLong=var1574, $r3=var3024, $l0=var1171, $r5=var1962, $r6=var242, $r7=var2256, $r8=var3479, jdk.internal.org.objectweb.asm.Type=var1028, $r9=var2778}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1}
;stmts r0 := @this: jdk.jfr.internal.EventClassBuilder;	r11 := @parameter0: java.util.List;	r10 := @parameter1: java.util.List;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new jdk.internal.org.objectweb.asm.ClassWriter;	specialinvoke $r1.<jdk.internal.org.objectweb.asm.ClassWriter: void <init>(int)>(3);	r0.<jdk.jfr.internal.EventClassBuilder: jdk.internal.org.objectweb.asm.ClassWriter classWriter> = $r1;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jdk.jfr.DynamicEvent");	$r3 = <jdk.jfr.internal.EventClassBuilder: java.util.concurrent.atomic.AtomicLong idCounter>;	$l0 = virtualinvoke $r3.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<jdk.jfr.internal.EventClassBuilder: java.lang.String fullClassName> = $r6;	$r7 = r0.<jdk.jfr.internal.EventClassBuilder: java.lang.String fullClassName>;	$r8 = virtualinvoke $r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/");	$r9 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(java.lang.String)>($r8);	r0.<jdk.jfr.internal.EventClassBuilder: jdk.internal.org.objectweb.asm.Type type> = $r9;	r0.<jdk.jfr.internal.EventClassBuilder: java.util.List fields> = r10;	r0.<jdk.jfr.internal.EventClassBuilder: java.util.List annotationElements> = r11;	return
;block_num 1