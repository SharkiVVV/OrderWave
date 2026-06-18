; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [287 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [568 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 206
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 171
	i64 196720943101637631, ; 2: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 58
	i64 210515253464952879, ; 3: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 232
	i64 229794953483747371, ; 4: System.ValueTuple.dll => 0x330654aed93802b => 151
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 254
	i64 233177144301842968, ; 6: Xamarin.AndroidX.Collection.Jvm.dll => 0x33c696097d9f218 => 233
	i64 316157742385208084, ; 7: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 236
	i64 350667413455104241, ; 8: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 132
	i64 422779754995088667, ; 9: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 56
	i64 560278790331054453, ; 10: System.Reflection.Primitives => 0x7c6829760de3975 => 95
	i64 563128987812417704, ; 11: Avalonia.Base.dll => 0x7d0a2d4b148d0a8 => 173
	i64 634308326490598313, ; 12: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 248
	i64 649145001856603771, ; 13: System.Security.SecureString => 0x90239f09b62167b => 129
	i64 670564002081277297, ; 14: Microsoft.Identity.Client.dll => 0x94e526837380571 => 207
	i64 689551008517048957, ; 15: MicroCom.Runtime.dll => 0x991c6fd252bca7d => 197
	i64 707452703347108429, ; 16: Avalonia.Controls.dll => 0x9d1607c4664ea4d => 174
	i64 750875890346172408, ; 17: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 145
	i64 769231974326215379, ; 18: ja/Microsoft.Data.SqlClient.resources.dll => 0xaacdc67b39622d3 => 274
	i64 799765834175365804, ; 19: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 872800313462103108, ; 20: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 240
	i64 937459790420187032, ; 21: Microsoft.SqlServer.Server.dll => 0xd0286b667351798 => 215
	i64 940822596282819491, ; 22: System.Transactions => 0xd0e792aa81923a3 => 150
	i64 960778385402502048, ; 23: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 104
	i64 1010599046655515943, ; 24: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 95
	i64 1060858978308751610, ; 25: Azure.Core.dll => 0xeb8ed9ebee080fa => 193
	i64 1092282731782904681, ; 26: Avalonia.Markup.Xaml.dll => 0xf28915b7e369b69 => 177
	i64 1150430735170971895, ; 27: ru\Microsoft.Data.SqlClient.resources => 0xff726a88c8ea8f7 => 278
	i64 1268860745194512059, ; 28: System.Drawing.dll => 0x119be62002c19ebb => 36
	i64 1301626418029409250, ; 29: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 28
	i64 1315114680217950157, ; 30: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 230
	i64 1404195534211153682, ; 31: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 50
	i64 1425944114962822056, ; 32: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 115
	i64 1476839205573959279, ; 33: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 70
	i64 1492954217099365037, ; 34: System.Net.HttpListener => 0x14b809f350210aad => 65
	i64 1513467482682125403, ; 35: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 170
	i64 1537168428375924959, ; 36: System.Threading.Thread.dll => 0x15551e8a954ae0df => 145
	i64 1624659445732251991, ; 37: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 229
	i64 1628611045998245443, ; 38: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 250
	i64 1651782184287836205, ; 39: System.Globalization.Calendars => 0x16ec4f2524cb982d => 40
	i64 1659332977923810219, ; 40: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 89
	i64 1682513316613008342, ; 41: System.Net.dll => 0x17597cf276952bd6 => 81
	i64 1735388228521408345, ; 42: System.Net.Mail.dll => 0x181556663c69b759 => 66
	i64 1743969030606105336, ; 43: System.Memory.dll => 0x1833d297e88f2af8 => 62
	i64 1767386781656293639, ; 44: System.Private.Uri.dll => 0x188704e9f5582107 => 86
	i64 1795316252682057001, ; 45: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 228
	i64 1825687700144851180, ; 46: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 106
	i64 1836611346387731153, ; 47: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 254
	i64 1854145951182283680, ; 48: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 102
	i64 1865037103900624886, ; 49: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 198
	i64 1875417405349196092, ; 50: System.Drawing.Primitives => 0x1a06d2319b6c713c => 35
	i64 1875917498431009007, ; 51: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 225
	i64 1930726298510463061, ; 52: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 195
	i64 1972385128188460614, ; 53: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 119
	i64 1981742497975770890, ; 54: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 249
	i64 2040001226662520565, ; 55: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 142
	i64 2049694801020856142, ; 56: Avalonia.Themes.Fluent => 0x1c71fa8fd0d0274e => 191
	i64 2062890601515140263, ; 57: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 141
	i64 2064708342624596306, ; 58: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 265
	i64 2080945842184875448, ; 59: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 53
	i64 2102659300918482391, ; 60: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 35
	i64 2106033277907880740, ; 61: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 141
	i64 2262844636196693701, ; 62: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 240
	i64 2287834202362508563, ; 63: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 64: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2304837677853103545, ; 65: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 253
	i64 2315304989185124968, ; 66: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 51
	i64 2316229908869312383, ; 67: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x2024e6d4884a6f7f => 213
	i64 2329709569556905518, ; 68: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 246
	i64 2335503487726329082, ; 69: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 136
	i64 2337758774805907496, ; 70: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 101
	i64 2455219140186822125, ; 71: Avalonia.Controls.ColorPicker.dll => 0x2212b0ccb89355ed => 185
	i64 2479423007379663237, ; 72: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 258
	i64 2497223385847772520, ; 73: System.Runtime => 0x22a7eb7046413568 => 116
	i64 2516498815742412887, ; 74: Xamarin.AndroidX.Core.SplashScreen.dll => 0x22ec665706048857 => 237
	i64 2547086958574651984, ; 75: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 224
	i64 2592350477072141967, ; 76: System.Xml.dll => 0x23f9e10627330e8f => 163
	i64 2612152650457191105, ; 77: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 214
	i64 2624866290265602282, ; 78: mscorlib.dll => 0x246d65fbde2db8ea => 166
	i64 2632269733008246987, ; 79: System.Net.NameResolution => 0x2487b36034f808cb => 67
	i64 2632383359798256946, ; 80: tr\Microsoft.Data.SqlClient.resources => 0x24881ab8016ca532 => 279
	i64 2706075432581334785, ; 81: System.Net.WebSockets => 0x258de944be6c0701 => 80
	i64 2783046991838674048, ; 82: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 101
	i64 2787234703088983483, ; 83: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 255
	i64 2789714023057451704, ; 84: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 210
	i64 2815524396660695947, ; 85: System.Security.AccessControl => 0x2712c0857f68238b => 117
	i64 2833633450228989597, ; 86: Avalonia.Metal => 0x2753169c18903e9d => 179
	i64 2851879596360956261, ; 87: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 218
	i64 3004558106879253741, ; 88: ja\Microsoft.Data.SqlClient.resources => 0x29b255adeb8edced => 274
	i64 3017136373564924869, ; 89: System.Net.WebProxy => 0x29df058bd93f63c5 => 78
	i64 3028909397620569818, ; 90: Avalonia.dll => 0x2a08d90c9e0436da => 183
	i64 3063847325783385934, ; 91: System.ClientModel.dll => 0x2a84f8e8eb59674e => 217
	i64 3106852385031680087, ; 92: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 114
	i64 3110390492489056344, ; 93: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 121
	i64 3135773902340015556, ; 94: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 48
	i64 3281594302220646930, ; 95: System.Security.Principal => 0x2d8a90a198ceba12 => 128
	i64 3289520064315143713, ; 96: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 245
	i64 3303437397778967116, ; 97: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 226
	i64 3311221304742556517, ; 98: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 82
	i64 3325875462027654285, ; 99: System.Runtime.Numerics => 0x2e27e21c8958b48d => 110
	i64 3328853167529574890, ; 100: System.Net.Sockets.dll => 0x2e327651a008c1ea => 75
	i64 3344514922410554693, ; 101: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 268
	i64 3402534845034375023, ; 102: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 220
	i64 3437845325506641314, ; 103: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 53
	i64 3493805808809882663, ; 104: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 256
	i64 3508450208084372758, ; 105: System.Net.Ping => 0x30b084e02d03ad16 => 69
	i64 3523004241079211829, ; 106: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 202
	i64 3531994851595924923, ; 107: System.Numerics => 0x31042a9aade235bb => 83
	i64 3551103847008531295, ; 108: System.Private.CoreLib.dll => 0x31480e226177735f => 172
	i64 3571415421602489686, ; 109: System.Runtime.dll => 0x319037675df7e556 => 116
	i64 3647754201059316852, ; 110: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 156
	i64 3663491111990894048, ; 111: OrderWave.dll => 0x32d755c1a0049de0 => 282
	i64 3716579019761409177, ; 112: netstandard.dll => 0x3393f0ed5c8c5c99 => 167
	i64 3869649043256705283, ; 113: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 32
	i64 3919223565570527920, ; 114: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 122
	i64 3933965368022646939, ; 115: System.Net.Requests => 0x369840a8bfadc09b => 72
	i64 3966267475168208030, ; 116: System.Memory => 0x370b03412596249e => 62
	i64 4006972109285359177, ; 117: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 161
	i64 4009997192427317104, ; 118: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 113
	i64 4073500526318903918, ; 119: System.Private.Xml.dll => 0x3887fb25779ae26e => 88
	i64 4090066110372993390, ; 120: fr/Microsoft.Data.SqlClient.resources.dll => 0x38c2d57510a5596e => 272
	i64 4108717018440987017, ; 121: Avalonia.Diagnostics => 0x3905185bfec6f189 => 187
	i64 4148881117810174540, ; 122: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 105
	i64 4154383907710350974, ; 123: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 124: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 146
	i64 4168469861834746866, ; 125: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 118
	i64 4187479170553454871, ; 126: System.Linq.Expressions => 0x3a1cea1e912fa117 => 58
	i64 4201423742386704971, ; 127: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 236
	i64 4205801962323029395, ; 128: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4235503420553921860, ; 129: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 52
	i64 4282138915307457788, ; 130: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 92
	i64 4321865999928413850, ; 131: System.Diagnostics.EventLog.dll => 0x3bfa5a3a8c924e9a => 219
	i64 4343083164021660430, ; 132: zh-Hans/Microsoft.Data.SqlClient.resources.dll => 0x3c45bb20857d9b0e => 280
	i64 4373617458794931033, ; 133: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 55
	i64 4397634830160618470, ; 134: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 129
	i64 4477672992252076438, ; 135: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 152
	i64 4484706122338676047, ; 136: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 41
	i64 4524629528625074585, ; 137: Avalonia.OpenGL => 0x3ecab69571f0d199 => 181
	i64 4533124835995628778, ; 138: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 92
	i64 4636684751163556186, ; 139: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 259
	i64 4672453897036726049, ; 140: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 50
	i64 4674346441075111055, ; 141: Avalonia.Controls.DataGrid => 0x40de9d528964b48f => 186
	i64 4716677666592453464, ; 142: System.Xml.XmlSerializer => 0x417501590542f358 => 162
	i64 4743821336939966868, ; 143: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 144: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 247
	i64 4794310189461587505, ; 145: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 224
	i64 4809057822547766521, ; 146: System.Drawing => 0x42bd349c3145ecf9 => 36
	i64 4814660307502931973, ; 147: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 67
	i64 4853321196694829351, ; 148: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 109
	i64 5077203502941069614, ; 149: Microsoft.Bcl.Cryptography.dll => 0x4675d9af8d2be12e => 199
	i64 5081566143765835342, ; 150: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 99
	i64 5099468265966638712, ; 151: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 99
	i64 5103417709280584325, ; 152: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5182934613077526976, ; 153: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5244375036463807528, ; 154: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 155: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 128
	i64 5278787618751394462, ; 156: System.Net.WebClient.dll => 0x4942055efc68329e => 76
	i64 5290786973231294105, ; 157: System.Runtime.Loader => 0x496ca6b869b72699 => 109
	i64 5376510917114486089, ; 158: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 258
	i64 5423376490970181369, ; 159: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 106
	i64 5440320908473006344, ; 160: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5446034149219586269, ; 161: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5457765010617926378, ; 162: System.Xml.Serialization => 0x4bbde05c557002ea => 157
	i64 5507995362134886206, ; 163: System.Core.dll => 0x4c705499688c873e => 21
	i64 5527431512186326818, ; 164: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 49
	i64 5549668961369458392, ; 165: Avalonia.Skia => 0x4d046284577006d8 => 190
	i64 5570799893513421663, ; 166: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 43
	i64 5573260873512690141, ; 167: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 126
	i64 5574231584441077149, ; 168: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 227
	i64 5591791169662171124, ; 169: System.Linq.Parallel => 0x4d9a087135e137f4 => 59
	i64 5610343915401270973, ; 170: Avalonia.Markup.dll => 0x4ddbf210f14456bd => 178
	i64 5650097808083101034, ; 171: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 119
	i64 5757522595884336624, ; 172: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 234
	i64 5783556987928984683, ; 173: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5979151488806146654, ; 174: System.Formats.Asn1 => 0x52fa3699a489d25e => 38
	i64 5984759512290286505, ; 175: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 124
	i64 6222399776351216807, ; 176: System.Text.Json.dll => 0x565a67a0ffe264a7 => 137
	i64 6251069312384999852, ; 177: System.Transactions.Local => 0x56c0426b870da1ac => 149
	i64 6278736998281604212, ; 178: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 85
	i64 6284145129771520194, ; 179: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 90
	i64 6319713645133255417, ; 180: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 248
	i64 6321005050625483161, ; 181: Avalonia.Vulkan.dll => 0x57b8b89a79fb6199 => 182
	i64 6328501323422750843, ; 182: Avalonia.Dialogs => 0x57d35a6c7f33d87b => 176
	i64 6357457916754632952, ; 183: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 283
	i64 6380710567210293407, ; 184: Avalonia.Base => 0x588cd6745526989f => 173
	i64 6384864380059521739, ; 185: Avalonia.OpenGL.dll => 0x589b9853407e12cb => 181
	i64 6401687960814735282, ; 186: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 246
	i64 6548213210057960872, ; 187: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 239
	i64 6560151584539558821, ; 188: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 205
	i64 6617685658146568858, ; 189: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 133
	i64 6667137106064718713, ; 190: ru/Microsoft.Data.SqlClient.resources.dll => 0x5c866ddfbbd03b79 => 278
	i64 6671798237668743565, ; 191: SkiaSharp => 0x5c96fd260152998d => 216
	i64 6713440830605852118, ; 192: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 96
	i64 6739853162153639747, ; 193: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6772837112740759457, ; 194: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 105
	i64 6786606130239981554, ; 195: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 33
	i64 6798329586179154312, ; 196: System.Windows => 0x5e5884bd523ca188 => 154
	i64 6814185388980153342, ; 197: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 158
	i64 6816440634817214622, ; 198: Avalonia.Dialogs.dll => 0x5e98dca46ed1789e => 176
	i64 6824903559247452477, ; 199: Avalonia.Remote.Protocol.dll => 0x5eb6eda0933e593d => 189
	i64 6833352825668324144, ; 200: Avalonia.Controls.ColorPicker => 0x5ed4f230b6df4b30 => 185
	i64 6876862101832370452, ; 201: System.Xml.Linq => 0x5f6f85a57d108914 => 155
	i64 6894844156784520562, ; 202: System.Numerics.Vectors => 0x5faf683aead1ad72 => 82
	i64 6934098813029519534, ; 203: OrderWave => 0x603ade21cc1510ae => 282
	i64 7055072420069764613, ; 204: pt-BR/Microsoft.Data.SqlClient.resources.dll => 0x61e8a6fc96e9ee05 => 277
	i64 7060896174307865760, ; 205: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 143
	i64 7083547580668757502, ; 206: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 87
	i64 7101497697220435230, ; 207: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 208: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 244
	i64 7105430439328552570, ; 209: System.Security.Cryptography.Pkcs => 0x629b8f56a06d167a => 222
	i64 7112547816752919026, ; 210: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 51
	i64 7270811800166795866, ; 211: System.Linq => 0x64e71ccf51a90a5a => 61
	i64 7299370801165188114, ; 212: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 54
	i64 7316205155833392065, ; 213: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7338192458477945005, ; 214: System.Reflection => 0x65d67f295d0740ad => 97
	i64 7348123982286201829, ; 215: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 221
	i64 7377312882064240630, ; 216: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7488575175965059935, ; 217: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 155
	i64 7489048572193775167, ; 218: System.ObjectModel => 0x67ee71ff6b419e3f => 84
	i64 7496222613193209122, ; 219: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 220
	i64 7553498704560191638, ; 220: Avalonia.Skia.dll => 0x68d36b0d38aef896 => 190
	i64 7592535546311173087, ; 221: Avalonia.Fonts.Inter => 0x695e1ada366763df => 188
	i64 7592577537120840276, ; 222: System.Diagnostics.Process => 0x695e410af5b2aa54 => 29
	i64 7637303409920963731, ; 223: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 45
	i64 7654504624184590948, ; 224: System.Net.Http => 0x6a3a4366801b8264 => 64
	i64 7694700312542370399, ; 225: System.Net.Mail => 0x6ac9112a7e2cda5f => 66
	i64 7714652370974252055, ; 226: System.Private.CoreLib => 0x6b0ff375198b9c17 => 172
	i64 7735176074855944702, ; 227: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 228: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 263
	i64 7791074099216502080, ; 229: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 47
	i64 7820441508502274321, ; 230: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 231: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 229
	i64 7972383140441761405, ; 232: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 201
	i64 8025517457475554965, ; 233: WindowsBase => 0x6f605d9b4786ce95 => 165
	i64 8031450141206250471, ; 234: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 108
	i64 8064050204834738623, ; 235: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 236: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 245
	i64 8085230611270010360, ; 237: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 63
	i64 8087206902342787202, ; 238: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 27
	i64 8103644804370223335, ; 239: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8113615946733131500, ; 240: System.Reflection.Extensions => 0x70995ab73cf916ec => 93
	i64 8167236081217502503, ; 241: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 168
	i64 8185542183669246576, ; 242: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 243: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 267
	i64 8234598844743906698, ; 244: Microsoft.Identity.Client.Extensions.Msal.dll => 0x72472c0540cd758a => 208
	i64 8235972910441640993, ; 245: Avalonia.Vulkan => 0x724c0db9da9d3421 => 182
	i64 8264926008854159966, ; 246: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 29
	i64 8290740647658429042, ; 247: System.Runtime.Extensions => 0x730ea0b15c929a72 => 103
	i64 8307185734628499939, ; 248: Avalonia.Android => 0x73490d698bb961e3 => 184
	i64 8318905602908530212, ; 249: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8343033485683067408, ; 250: Avalonia.MicroCom.dll => 0x73c868c07f540a10 => 180
	i64 8368701292315763008, ; 251: System.Security.Cryptography => 0x7423997c6fd56140 => 126
	i64 8410671156615598628, ; 252: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 91
	i64 8426919725312979251, ; 253: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 247
	i64 8513291706828295435, ; 254: Microsoft.SqlServer.Server => 0x762549b3b6c78d0b => 215
	i64 8518412311883997971, ; 255: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8563666267364444763, ; 256: System.Private.Uri => 0x76d841191140ca5b => 86
	i64 8598790081731763592, ; 257: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 242
	i64 8623059219396073920, ; 258: System.Net.Quic.dll => 0x77ab42ac514299c0 => 71
	i64 8626175481042262068, ; 259: Java.Interop => 0x77b654e585b55834 => 168
	i64 8638972117149407195, ; 260: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8648495978913578441, ; 261: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8684531736582871431, ; 262: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 44
	i64 8725526185868997716, ; 263: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 27
	i64 8853378295825400934, ; 264: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 264
	i64 8882398187484578781, ; 265: de/Microsoft.Data.SqlClient.resources.dll => 0x7b449e172e9783dd => 270
	i64 8941376889969657626, ; 266: System.Xml.XDocument => 0x7c1626e87187471a => 158
	i64 8951477988056063522, ; 267: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 252
	i64 8954753533646919997, ; 268: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 112
	i64 8955323522379913726, ; 269: Microsoft.Identity.Client => 0x7c47b34bd82799fe => 207
	i64 8962916719318709492, ; 270: Avalonia.Themes.Fluent.dll => 0x7c62ad44c666b4f4 => 191
	i64 8987845817414925545, ; 271: Avalonia.Remote.Protocol => 0x7cbb3e26baff3ce9 => 189
	i64 9052662452269567435, ; 272: Microsoft.IdentityModel.Protocols => 0x7da184898b0b4dcb => 212
	i64 9111603110219107042, ; 273: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 202
	i64 9138683372487561558, ; 274: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 121
	i64 9324707631942237306, ; 275: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 228
	i64 9389258210823261255, ; 276: it/Microsoft.Data.SqlClient.resources.dll => 0x824d5898a88a4c47 => 273
	i64 9427266486299436557, ; 277: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 211
	i64 9468215723722196442, ; 278: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 159
	i64 9513793942805897923, ; 279: zh-Hans\Microsoft.Data.SqlClient.resources => 0x8407c92f4b3562c3 => 280
	i64 9554839972845591462, ; 280: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 131
	i64 9584643793929893533, ; 281: System.IO.dll => 0x85037ebfbbd7f69d => 57
	i64 9659729154652888475, ; 282: System.Text.RegularExpressions => 0x860e407c9991dd9b => 138
	i64 9662334977499516867, ; 283: System.Numerics.dll => 0x8617827802b0cfc3 => 83
	i64 9667360217193089419, ; 284: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 30
	i64 9702891218465930390, ; 285: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9808709177481450983, ; 286: Mono.Android.dll => 0x881f890734e555e7 => 171
	i64 9819168441846169364, ; 287: Microsoft.IdentityModel.Protocols.dll => 0x8844b1ac75f77f14 => 212
	i64 9825649861376906464, ; 288: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 234
	i64 9834056768316610435, ; 289: System.Transactions.dll => 0x8879968718899783 => 150
	i64 9836529246295212050, ; 290: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 94
	i64 9907349773706910547, ; 291: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 242
	i64 9933555792566666578, ; 292: System.Linq.Queryable.dll => 0x89db145cf475c552 => 60
	i64 9974604633896246661, ; 293: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 157
	i64 10004628763249497471, ; 294: Avalonia.Themes.Simple => 0x8ad794da7724557f => 192
	i64 10038780035334861115, ; 295: System.Net.Http.dll => 0x8b50e941206af13b => 64
	i64 10051358222726253779, ; 296: System.Private.Xml => 0x8b7d990c97ccccd3 => 88
	i64 10078727084704864206, ; 297: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 79
	i64 10089571585547156312, ; 298: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 47
	i64 10105485790837105934, ; 299: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 143
	i64 10226222362177979215, ; 300: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 265
	i64 10229024438826829339, ; 301: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 239
	i64 10236703004850800690, ; 302: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 74
	i64 10245369515835430794, ; 303: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 91
	i64 10253386210042008591, ; 304: Avalonia.Markup.Xaml => 0x8e4b586eea71540f => 177
	i64 10321854143672141184, ; 305: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 262
	i64 10360651442923773544, ; 306: System.Text.Encoding => 0x8fc86d98211c1e68 => 135
	i64 10364469296367737616, ; 307: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 90
	i64 10376576884623852283, ; 308: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 256
	i64 10406448008575299332, ; 309: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 268
	i64 10430153318873392755, ; 310: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 235
	i64 10447083246144586668, ; 311: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 198
	i64 10466034231130677304, ; 312: MicroCom.Runtime => 0x913ed2ae899f6038 => 197
	i64 10515187668141221425, ; 313: Microsoft.Bcl.Cryptography => 0x91ed7378ea202631 => 199
	i64 10546663366131771576, ; 314: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 112
	i64 10566960649245365243, ; 315: System.Globalization.dll => 0x92a562b96dcd13fb => 42
	i64 10595762989148858956, ; 316: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 159
	i64 10670374202010151210, ; 317: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 318: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 103
	i64 10785150219063592792, ; 319: System.Net.Primitives => 0x95ac8cfb68830758 => 70
	i64 10822644899632537592, ; 320: System.Linq.Queryable => 0x9631c23204ca5ff8 => 60
	i64 10830817578243619689, ; 321: System.Formats.Tar => 0x964ecb340a447b69 => 39
	i64 10847732767863316357, ; 322: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 230
	i64 10889380495983713167, ; 323: Microsoft.Data.SqlClient.dll => 0x971ed9dddf2d1b8f => 200
	i64 10899834349646441345, ; 324: System.Web => 0x9743fd975946eb81 => 153
	i64 10943875058216066601, ; 325: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 56
	i64 10964653383833615866, ; 326: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 34
	i64 11002576679268595294, ; 327: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 204
	i64 11019817191295005410, ; 328: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 227
	i64 11023048688141570732, ; 329: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 330: System.Xml => 0x992e31d0412bf7fc => 163
	i64 11038974641380222378, ; 331: zh-Hant/Microsoft.Data.SqlClient.resources.dll => 0x993250f3080365aa => 281
	i64 11162124722117608902, ; 332: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 260
	i64 11183417087873056340, ; 333: ko\Microsoft.Data.SqlClient.resources => 0x9b337a96d1b4fe54 => 275
	i64 11188319605227840848, ; 334: System.Threading.Overlapped => 0x9b44e5671724e550 => 140
	i64 11226290749488709958, ; 335: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 205
	i64 11235648312900863002, ; 336: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 89
	i64 11299661109949763898, ; 337: Xamarin.AndroidX.Collection.Jvm => 0x9cd075e94cda113a => 233
	i64 11329751333533450475, ; 338: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 147
	i64 11340910727871153756, ; 339: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 238
	i64 11341245327015630248, ; 340: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 218
	i64 11347436699239206956, ; 341: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 162
	i64 11369118378396596751, ; 342: de\Microsoft.Data.SqlClient.resources => 0x9dc738edd1b1ba0f => 270
	i64 11432101114902388181, ; 343: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 344: Mono.Android.Export => 0x9edabf8623efc131 => 169
	i64 11448276831755070604, ; 345: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 31
	i64 11485890710487134646, ; 346: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 107
	i64 11517440453979132662, ; 347: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 209
	i64 11529969570048099689, ; 348: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 260
	i64 11580057168383206117, ; 349: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 225
	i64 11591352189662810718, ; 350: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 255
	i64 11597940890313164233, ; 351: netstandard => 0xa0f429ca8d1805c9 => 167
	i64 11672361001936329215, ; 352: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 244
	i64 11692977985522001935, ; 353: System.Threading.Overlapped.dll => 0xa245cd869980680f => 140
	i64 11707554492040141440, ; 354: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 59
	i64 11743665907891708234, ; 355: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 144
	i64 11991047634523762324, ; 356: System.Net => 0xa668c24ad493ae94 => 81
	i64 11997227339607644824, ; 357: Avalonia.Controls.DataGrid.dll => 0xa67eb6b38aeb1a98 => 186
	i64 12011556116648931059, ; 358: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 223
	i64 12040886584167504988, ; 359: System.Net.ServicePoint => 0xa719d28d8e121c5c => 74
	i64 12063623837170009990, ; 360: System.Security => 0xa76a99f6ce740786 => 130
	i64 12094367927612810875, ; 361: it\Microsoft.Data.SqlClient.resources => 0xa7d7d38d2c3d267b => 273
	i64 12096697103934194533, ; 362: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 363: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12107153474885735932, ; 364: Avalonia.DesignerSupport.dll => 0xa8053ff05fb355fc => 175
	i64 12123043025855404482, ; 365: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 93
	i64 12137774235383566651, ; 366: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 257
	i64 12145679461940342714, ; 367: System.Text.Json => 0xa88e1f1ebcb62fba => 137
	i64 12198439281774268251, ; 368: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0xa9498fe58c538f5b => 213
	i64 12201331334810686224, ; 369: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 113
	i64 12269460666702402136, ; 370: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12319827376581239000, ; 371: Avalonia => 0xaaf8d1b9cb41e0d8 => 183
	i64 12332222936682028543, ; 372: System.Runtime.Handles => 0xab24db6c07db5dff => 104
	i64 12375446203996702057, ; 373: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12439275739440478309, ; 374: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 210
	i64 12451044538927396471, ; 375: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 243
	i64 12466513435562512481, ; 376: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 251
	i64 12475113361194491050, ; 377: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 283
	i64 12493213219680520345, ; 378: Microsoft.Data.SqlClient => 0xad60cf3b3e458899 => 200
	i64 12517810545449516888, ; 379: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 33
	i64 12550732019250633519, ; 380: System.IO.Compression => 0xae2d28465e8e1b2f => 46
	i64 12699999919562409296, ; 381: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 30
	i64 12700543734426720211, ; 382: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 232
	i64 12708238894395270091, ; 383: System.IO => 0xb05cbbf17d3ba3cb => 57
	i64 12708922737231849740, ; 384: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 134
	i64 12717050818822477433, ; 385: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 114
	i64 12828192437253469131, ; 386: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 266
	i64 12835242264250840079, ; 387: System.IO.Pipes => 0xb21ff0d5d6c0740f => 55
	i64 12843321153144804894, ; 388: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 206
	i64 12843770487262409629, ; 389: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 390: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 77
	i64 12998524970302822152, ; 391: Avalonia.Fonts.Inter.dll => 0xb464099762f1d708 => 188
	i64 13068258254871114833, ; 392: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 111
	i64 13106026140046202731, ; 393: HarfBuzzSharp.dll => 0xb5e1f555ee70176b => 196
	i64 13129914918964716986, ; 394: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 241
	i64 13173818576982874404, ; 395: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 102
	i64 13343850469010654401, ; 396: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 170
	i64 13370592475155966277, ; 397: System.Runtime.Serialization => 0xb98de304062ea945 => 115
	i64 13401370062847626945, ; 398: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 257
	i64 13431476299110033919, ; 399: System.Net.WebClient => 0xba663087f18829ff => 76
	i64 13454009404024712428, ; 400: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 261
	i64 13463706743370286408, ; 401: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 85
	i64 13465488254036897740, ; 402: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 263
	i64 13491513212026656886, ; 403: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 231
	i64 13578472628727169633, ; 404: System.Xml.XPath => 0xbc706ce9fba5c261 => 160
	i64 13580399111273692417, ; 405: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13647894001087880694, ; 406: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13702626353344114072, ; 407: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 32
	i64 13710614125866346983, ; 408: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 117
	i64 13711608316504069620, ; 409: cs\Microsoft.Data.SqlClient.resources => 0xbe496b1ddc8455f4 => 269
	i64 13713329104121190199, ; 410: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 37
	i64 13717397318615465333, ; 411: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13742054908850494594, ; 412: Azure.Identity => 0xbeb596218df25c82 => 194
	i64 13744574144699395472, ; 413: OrderWave.Android.dll => 0xbebe895cdbd36d90 => 0
	i64 13768883594457632599, ; 414: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 52
	i64 13773684197872074685, ; 415: pl\Microsoft.Data.SqlClient.resources => 0xbf25f4cd46937fbd => 276
	i64 13828521679616088467, ; 416: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 264
	i64 13838448951611437224, ; 417: Avalonia.Markup => 0xc00c0c00932d30a8 => 178
	i64 13881769479078963060, ; 418: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13911222732217019342, ; 419: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 123
	i64 13928444506500929300, ; 420: System.Windows.dll => 0xc14bc67b8bba9714 => 154
	i64 13959074834287824816, ; 421: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 243
	i64 14075334701871371868, ; 422: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 131
	i64 14125464355221830302, ; 423: System.Threading.dll => 0xc407bafdbc707a9e => 148
	i64 14212104595480609394, ; 424: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 120
	i64 14220608275227875801, ; 425: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 28
	i64 14226382999226559092, ; 426: System.ServiceProcess => 0xc56e43f6938e2a74 => 132
	i64 14232023429000439693, ; 427: System.Resources.Writer.dll => 0xc5824de7789ba78d => 100
	i64 14254574811015963973, ; 428: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 134
	i64 14298246716367104064, ; 429: System.Web.dll => 0xc66d93a217f4e840 => 153
	i64 14327695147300244862, ; 430: System.Reflection.dll => 0xc6d632d338eb4d7e => 97
	i64 14327709162229390963, ; 431: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 125
	i64 14346402571976470310, ; 432: System.Net.Ping.dll => 0xc718a920f3686f26 => 69
	i64 14461014870687870182, ; 433: System.Net.Requests.dll => 0xc8afd8683afdece6 => 72
	i64 14495724990987328804, ; 434: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 253
	i64 14533141687369379279, ; 435: zh-Hant\Microsoft.Data.SqlClient.resources => 0xc9b0175d6212adcf => 281
	i64 14551742072151931844, ; 436: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 136
	i64 14561513370130550166, ; 437: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 124
	i64 14574160591280636898, ; 438: System.Net.Quic => 0xca41d1d72ec783e2 => 71
	i64 14622043554576106986, ; 439: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 111
	i64 14648804764802849406, ; 440: Azure.Identity.dll => 0xcb4b0252261f9a7e => 194
	i64 14690985099581930927, ; 441: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 152
	i64 14792063746108907174, ; 442: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 261
	i64 14832630590065248058, ; 443: System.Security.Claims => 0xcdd816ef5d6e873a => 118
	i64 14852515768018889994, ; 444: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 238
	i64 14912225920358050525, ; 445: System.Security.Principal.Windows => 0xcef2de7759506add => 127
	i64 14921072373058723558, ; 446: ko/Microsoft.Data.SqlClient.resources.dll => 0xcf124c44a00f5ee6 => 275
	i64 14931407803744742450, ; 447: HarfBuzzSharp => 0xcf3704499ab36c32 => 196
	i64 14935719434541007538, ; 448: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 133
	i64 14954917835170835695, ; 449: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 203
	i64 14984936317414011727, ; 450: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 77
	i64 14987728460634540364, ; 451: System.IO.Compression.dll => 0xcfff1ba06622494c => 46
	i64 15015154896917945444, ; 452: System.Net.Security.dll => 0xd0608bd33642dc64 => 73
	i64 15024878362326791334, ; 453: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 63
	i64 15071021337266399595, ; 454: System.Resources.Reader.dll => 0xd127060e7a18a96b => 98
	i64 15076659072870671916, ; 455: System.ObjectModel.dll => 0xd13b0d8c1620662c => 84
	i64 15115185479366240210, ; 456: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 43
	i64 15115246995682617720, ; 457: pl/Microsoft.Data.SqlClient.resources.dll => 0xd1c4250efdf3e978 => 276
	i64 15133485256822086103, ; 458: System.Linq.dll => 0xd204f0a9127dd9d7 => 61
	i64 15138356091203993725, ; 459: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 209
	i64 15150743910298169673, ; 460: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 252
	i64 15234786388537674379, ; 461: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 37
	i64 15250465174479574862, ; 462: System.Globalization.Calendars.dll => 0xd3a489469852174e => 40
	i64 15279429628684179188, ; 463: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 267
	i64 15299439993936780255, ; 464: System.Xml.XPath.dll => 0xd452879d55019bdf => 160
	i64 15338463749992804988, ; 465: System.Resources.Reader => 0xd4dd2b839286f27c => 98
	i64 15370334346939861994, ; 466: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 235
	i64 15383240894167415497, ; 467: System.Memory.Data => 0xd57c4016df1c7ac9 => 221
	i64 15391712275433856905, ; 468: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 203
	i64 15440042012048828209, ; 469: pt-BR\Microsoft.Data.SqlClient.resources => 0xd6460c67b5472731 => 277
	i64 15475196252089753159, ; 470: System.Diagnostics.EventLog => 0xd6c2f1000b441e47 => 219
	i64 15526743539506359484, ; 471: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 135
	i64 15527772828719725935, ; 472: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 473: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 65
	i64 15541854775306130054, ; 474: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 125
	i64 15557562860424774966, ; 475: System.Net.Sockets => 0xd7e790fe7a6dc536 => 75
	i64 15582737692548360875, ; 476: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 250
	i64 15609085926864131306, ; 477: System.dll => 0xd89e9cf3334914ea => 164
	i64 15661133872274321916, ; 478: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 156
	i64 15710114879900314733, ; 479: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15718684508147848364, ; 480: es/Microsoft.Data.SqlClient.resources.dll => 0xda23fc476c9694ac => 271
	i64 15755368083429170162, ; 481: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 49
	i64 15809675044885562667, ; 482: cs/Microsoft.Data.SqlClient.resources.dll => 0xdb673fb0a8c3052b => 269
	i64 15817206913877585035, ; 483: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 144
	i64 15847085070278954535, ; 484: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 139
	i64 15885744048853936810, ; 485: System.Resources.Writer => 0xdc75800bd0b6eaaa => 100
	i64 15934062614519587357, ; 486: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 123
	i64 15937190497610202713, ; 487: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 120
	i64 15963349826457351533, ; 488: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 142
	i64 15971679995444160383, ; 489: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 39
	i64 16018552496348375205, ; 490: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 68
	i64 16054465462676478687, ; 491: System.Globalization.Extensions => 0xdecceb47319bdadf => 41
	i64 16063929133569271981, ; 492: Avalonia.Android.dll => 0xdeee8a6fc771e8ad => 184
	i64 16083117170034450818, ; 493: Avalonia.Controls => 0xdf32b5daa8e3a182 => 174
	i64 16154507427712707110, ; 494: System => 0xe03056ea4e39aa26 => 164
	i64 16219561732052121626, ; 495: System.Net.Security => 0xe1177575db7c781a => 73
	i64 16315482530584035869, ; 496: WindowsBase.dll => 0xe26c3ceb1e8d821d => 165
	i64 16321164108206115771, ; 497: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 204
	i64 16324796876805858114, ; 498: SkiaSharp.dll => 0xe28d5444586b6342 => 216
	i64 16337011941688632206, ; 499: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 127
	i64 16423015068819898779, ; 500: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 266
	i64 16454459195343277943, ; 501: System.Net.NetworkInformation => 0xe459fb756d988f77 => 68
	i64 16496768397145114574, ; 502: Mono.Android.Export.dll => 0xe4f04b741db987ce => 169
	i64 16540916324946374984, ; 503: fr\Microsoft.Data.SqlClient.resources => 0xe58d23c28fe37148 => 272
	i64 16555111656825353880, ; 504: Avalonia.Metal.dll => 0xe5bf9256d200f698 => 179
	i64 16648892297579399389, ; 505: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 195
	i64 16702652415771857902, ; 506: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 151
	i64 16709499819875633724, ; 507: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 45
	i64 16737807731308835127, ; 508: System.Runtime.Intrinsics => 0xe848a3736f733137 => 108
	i64 16758309481308491337, ; 509: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 48
	i64 16762783179241323229, ; 510: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 96
	i64 16765015072123548030, ; 511: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 31
	i64 16822611501064131242, ; 512: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 513: mscorlib => 0xe99c30c1484d7f4f => 166
	i64 16856067890322379635, ; 514: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16890310621557459193, ; 515: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 138
	i64 16933958494752847024, ; 516: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 78
	i64 16945858842201062480, ; 517: Azure.Core => 0xeb2bc8d57f4e7c50 => 193
	i64 16977952268158210142, ; 518: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 54
	i64 17006954551347072385, ; 519: System.ClientModel => 0xec04d70ec8414d81 => 217
	i64 17008137082415910100, ; 520: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 521: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 226
	i64 17062143951396181894, ; 522: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17118171214553292978, ; 523: System.Threading.Channels => 0xed8ff6060fc420b2 => 139
	i64 17134447395689342536, ; 524: Avalonia.DesignerSupport => 0xedc9c91fcaae2648 => 175
	i64 17137864900836977098, ; 525: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 214
	i64 17187273293601214786, ; 526: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17197986060146327831, ; 527: Microsoft.Identity.Client.Extensions.Msal => 0xeeab8533ef244117 => 208
	i64 17201328579425343169, ; 528: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 529: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 122
	i64 17214520524539272569, ; 530: Avalonia.Themes.Simple.dll => 0xeee64335ebd59d79 => 192
	i64 17224516867964533463, ; 531: OrderWave.Android => 0xef09c6d4febffad7 => 0
	i64 17230721278011714856, ; 532: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 87
	i64 17234219099804750107, ; 533: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 149
	i64 17260702271250283638, ; 534: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17333249706306540043, ; 535: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 34
	i64 17338386382517543202, ; 536: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 79
	i64 17375958953653056453, ; 537: Avalonia.MicroCom => 0xf123ce9b484233c5 => 180
	i64 17470386307322966175, ; 538: System.Threading.Timer => 0xf27347c8d0d5709f => 147
	i64 17509662556995089465, ; 539: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 80
	i64 17509666368860808140, ; 540: Xamarin.AndroidX.Core.SplashScreen => 0xf2fed4cad38d63cc => 237
	i64 17523946658117960076, ; 541: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 223
	i64 17558788868712318792, ; 542: es\Microsoft.Data.SqlClient.resources => 0xf3ad597215ae4748 => 271
	i64 17627500474728259406, ; 543: System.Globalization => 0xf4a176498a351f4e => 42
	i64 17685921127322830888, ; 544: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17704177640604968747, ; 545: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 251
	i64 17710060891934109755, ; 546: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 249
	i64 17712670374920797664, ; 547: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 107
	i64 17748157696115377834, ; 548: Avalonia.Diagnostics.dll => 0xf64e1f640e9286aa => 187
	i64 17777860260071588075, ; 549: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 110
	i64 17790600151040787804, ; 550: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 211
	i64 17838668724098252521, ; 551: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17891337867145587222, ; 552: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 262
	i64 17928294245072900555, ; 553: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 44
	i64 17992315986609351877, ; 554: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 161
	i64 18017743553296241350, ; 555: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 201
	i64 18025913125965088385, ; 556: System.Threading => 0xfa28e87b91334681 => 148
	i64 18102946074201342511, ; 557: tr/Microsoft.Data.SqlClient.resources.dll => 0xfb3a958a7cd2c22f => 279
	i64 18116111925905154859, ; 558: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 231
	i64 18146411883821974900, ; 559: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 38
	i64 18146811631844267958, ; 560: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18203743254473369877, ; 561: System.Security.Cryptography.Pkcs.dll => 0xfca0b00ad94c6915 => 222
	i64 18225059387460068507, ; 562: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 146
	i64 18245806341561545090, ; 563: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 564: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 241
	i64 18318849532986632368, ; 565: System.Security.dll => 0xfe39a097c37fa8b0 => 130
	i64 18380184030268848184, ; 566: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 259
	i64 18439108438687598470 ; 567: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 94
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [568 x i32] [
	i32 206, ; 0
	i32 171, ; 1
	i32 58, ; 2
	i32 232, ; 3
	i32 151, ; 4
	i32 254, ; 5
	i32 233, ; 6
	i32 236, ; 7
	i32 132, ; 8
	i32 56, ; 9
	i32 95, ; 10
	i32 173, ; 11
	i32 248, ; 12
	i32 129, ; 13
	i32 207, ; 14
	i32 197, ; 15
	i32 174, ; 16
	i32 145, ; 17
	i32 274, ; 18
	i32 18, ; 19
	i32 240, ; 20
	i32 215, ; 21
	i32 150, ; 22
	i32 104, ; 23
	i32 95, ; 24
	i32 193, ; 25
	i32 177, ; 26
	i32 278, ; 27
	i32 36, ; 28
	i32 28, ; 29
	i32 230, ; 30
	i32 50, ; 31
	i32 115, ; 32
	i32 70, ; 33
	i32 65, ; 34
	i32 170, ; 35
	i32 145, ; 36
	i32 229, ; 37
	i32 250, ; 38
	i32 40, ; 39
	i32 89, ; 40
	i32 81, ; 41
	i32 66, ; 42
	i32 62, ; 43
	i32 86, ; 44
	i32 228, ; 45
	i32 106, ; 46
	i32 254, ; 47
	i32 102, ; 48
	i32 198, ; 49
	i32 35, ; 50
	i32 225, ; 51
	i32 195, ; 52
	i32 119, ; 53
	i32 249, ; 54
	i32 142, ; 55
	i32 191, ; 56
	i32 141, ; 57
	i32 265, ; 58
	i32 53, ; 59
	i32 35, ; 60
	i32 141, ; 61
	i32 240, ; 62
	i32 8, ; 63
	i32 14, ; 64
	i32 253, ; 65
	i32 51, ; 66
	i32 213, ; 67
	i32 246, ; 68
	i32 136, ; 69
	i32 101, ; 70
	i32 185, ; 71
	i32 258, ; 72
	i32 116, ; 73
	i32 237, ; 74
	i32 224, ; 75
	i32 163, ; 76
	i32 214, ; 77
	i32 166, ; 78
	i32 67, ; 79
	i32 279, ; 80
	i32 80, ; 81
	i32 101, ; 82
	i32 255, ; 83
	i32 210, ; 84
	i32 117, ; 85
	i32 179, ; 86
	i32 218, ; 87
	i32 274, ; 88
	i32 78, ; 89
	i32 183, ; 90
	i32 217, ; 91
	i32 114, ; 92
	i32 121, ; 93
	i32 48, ; 94
	i32 128, ; 95
	i32 245, ; 96
	i32 226, ; 97
	i32 82, ; 98
	i32 110, ; 99
	i32 75, ; 100
	i32 268, ; 101
	i32 220, ; 102
	i32 53, ; 103
	i32 256, ; 104
	i32 69, ; 105
	i32 202, ; 106
	i32 83, ; 107
	i32 172, ; 108
	i32 116, ; 109
	i32 156, ; 110
	i32 282, ; 111
	i32 167, ; 112
	i32 32, ; 113
	i32 122, ; 114
	i32 72, ; 115
	i32 62, ; 116
	i32 161, ; 117
	i32 113, ; 118
	i32 88, ; 119
	i32 272, ; 120
	i32 187, ; 121
	i32 105, ; 122
	i32 18, ; 123
	i32 146, ; 124
	i32 118, ; 125
	i32 58, ; 126
	i32 236, ; 127
	i32 17, ; 128
	i32 52, ; 129
	i32 92, ; 130
	i32 219, ; 131
	i32 280, ; 132
	i32 55, ; 133
	i32 129, ; 134
	i32 152, ; 135
	i32 41, ; 136
	i32 181, ; 137
	i32 92, ; 138
	i32 259, ; 139
	i32 50, ; 140
	i32 186, ; 141
	i32 162, ; 142
	i32 13, ; 143
	i32 247, ; 144
	i32 224, ; 145
	i32 36, ; 146
	i32 67, ; 147
	i32 109, ; 148
	i32 199, ; 149
	i32 99, ; 150
	i32 99, ; 151
	i32 11, ; 152
	i32 11, ; 153
	i32 25, ; 154
	i32 128, ; 155
	i32 76, ; 156
	i32 109, ; 157
	i32 258, ; 158
	i32 106, ; 159
	i32 2, ; 160
	i32 26, ; 161
	i32 157, ; 162
	i32 21, ; 163
	i32 49, ; 164
	i32 190, ; 165
	i32 43, ; 166
	i32 126, ; 167
	i32 227, ; 168
	i32 59, ; 169
	i32 178, ; 170
	i32 119, ; 171
	i32 234, ; 172
	i32 3, ; 173
	i32 38, ; 174
	i32 124, ; 175
	i32 137, ; 176
	i32 149, ; 177
	i32 85, ; 178
	i32 90, ; 179
	i32 248, ; 180
	i32 182, ; 181
	i32 176, ; 182
	i32 283, ; 183
	i32 173, ; 184
	i32 181, ; 185
	i32 246, ; 186
	i32 239, ; 187
	i32 205, ; 188
	i32 133, ; 189
	i32 278, ; 190
	i32 216, ; 191
	i32 96, ; 192
	i32 3, ; 193
	i32 105, ; 194
	i32 33, ; 195
	i32 154, ; 196
	i32 158, ; 197
	i32 176, ; 198
	i32 189, ; 199
	i32 185, ; 200
	i32 155, ; 201
	i32 82, ; 202
	i32 282, ; 203
	i32 277, ; 204
	i32 143, ; 205
	i32 87, ; 206
	i32 19, ; 207
	i32 244, ; 208
	i32 222, ; 209
	i32 51, ; 210
	i32 61, ; 211
	i32 54, ; 212
	i32 4, ; 213
	i32 97, ; 214
	i32 221, ; 215
	i32 17, ; 216
	i32 155, ; 217
	i32 84, ; 218
	i32 220, ; 219
	i32 190, ; 220
	i32 188, ; 221
	i32 29, ; 222
	i32 45, ; 223
	i32 64, ; 224
	i32 66, ; 225
	i32 172, ; 226
	i32 1, ; 227
	i32 263, ; 228
	i32 47, ; 229
	i32 24, ; 230
	i32 229, ; 231
	i32 201, ; 232
	i32 165, ; 233
	i32 108, ; 234
	i32 12, ; 235
	i32 245, ; 236
	i32 63, ; 237
	i32 27, ; 238
	i32 23, ; 239
	i32 93, ; 240
	i32 168, ; 241
	i32 12, ; 242
	i32 267, ; 243
	i32 208, ; 244
	i32 182, ; 245
	i32 29, ; 246
	i32 103, ; 247
	i32 184, ; 248
	i32 14, ; 249
	i32 180, ; 250
	i32 126, ; 251
	i32 91, ; 252
	i32 247, ; 253
	i32 215, ; 254
	i32 9, ; 255
	i32 86, ; 256
	i32 242, ; 257
	i32 71, ; 258
	i32 168, ; 259
	i32 1, ; 260
	i32 5, ; 261
	i32 44, ; 262
	i32 27, ; 263
	i32 264, ; 264
	i32 270, ; 265
	i32 158, ; 266
	i32 252, ; 267
	i32 112, ; 268
	i32 207, ; 269
	i32 191, ; 270
	i32 189, ; 271
	i32 212, ; 272
	i32 202, ; 273
	i32 121, ; 274
	i32 228, ; 275
	i32 273, ; 276
	i32 211, ; 277
	i32 159, ; 278
	i32 280, ; 279
	i32 131, ; 280
	i32 57, ; 281
	i32 138, ; 282
	i32 83, ; 283
	i32 30, ; 284
	i32 10, ; 285
	i32 171, ; 286
	i32 212, ; 287
	i32 234, ; 288
	i32 150, ; 289
	i32 94, ; 290
	i32 242, ; 291
	i32 60, ; 292
	i32 157, ; 293
	i32 192, ; 294
	i32 64, ; 295
	i32 88, ; 296
	i32 79, ; 297
	i32 47, ; 298
	i32 143, ; 299
	i32 265, ; 300
	i32 239, ; 301
	i32 74, ; 302
	i32 91, ; 303
	i32 177, ; 304
	i32 262, ; 305
	i32 135, ; 306
	i32 90, ; 307
	i32 256, ; 308
	i32 268, ; 309
	i32 235, ; 310
	i32 198, ; 311
	i32 197, ; 312
	i32 199, ; 313
	i32 112, ; 314
	i32 42, ; 315
	i32 159, ; 316
	i32 4, ; 317
	i32 103, ; 318
	i32 70, ; 319
	i32 60, ; 320
	i32 39, ; 321
	i32 230, ; 322
	i32 200, ; 323
	i32 153, ; 324
	i32 56, ; 325
	i32 34, ; 326
	i32 204, ; 327
	i32 227, ; 328
	i32 21, ; 329
	i32 163, ; 330
	i32 281, ; 331
	i32 260, ; 332
	i32 275, ; 333
	i32 140, ; 334
	i32 205, ; 335
	i32 89, ; 336
	i32 233, ; 337
	i32 147, ; 338
	i32 238, ; 339
	i32 218, ; 340
	i32 162, ; 341
	i32 270, ; 342
	i32 6, ; 343
	i32 169, ; 344
	i32 31, ; 345
	i32 107, ; 346
	i32 209, ; 347
	i32 260, ; 348
	i32 225, ; 349
	i32 255, ; 350
	i32 167, ; 351
	i32 244, ; 352
	i32 140, ; 353
	i32 59, ; 354
	i32 144, ; 355
	i32 81, ; 356
	i32 186, ; 357
	i32 223, ; 358
	i32 74, ; 359
	i32 130, ; 360
	i32 273, ; 361
	i32 25, ; 362
	i32 7, ; 363
	i32 175, ; 364
	i32 93, ; 365
	i32 257, ; 366
	i32 137, ; 367
	i32 213, ; 368
	i32 113, ; 369
	i32 9, ; 370
	i32 183, ; 371
	i32 104, ; 372
	i32 19, ; 373
	i32 210, ; 374
	i32 243, ; 375
	i32 251, ; 376
	i32 283, ; 377
	i32 200, ; 378
	i32 33, ; 379
	i32 46, ; 380
	i32 30, ; 381
	i32 232, ; 382
	i32 57, ; 383
	i32 134, ; 384
	i32 114, ; 385
	i32 266, ; 386
	i32 55, ; 387
	i32 206, ; 388
	i32 6, ; 389
	i32 77, ; 390
	i32 188, ; 391
	i32 111, ; 392
	i32 196, ; 393
	i32 241, ; 394
	i32 102, ; 395
	i32 170, ; 396
	i32 115, ; 397
	i32 257, ; 398
	i32 76, ; 399
	i32 261, ; 400
	i32 85, ; 401
	i32 263, ; 402
	i32 231, ; 403
	i32 160, ; 404
	i32 2, ; 405
	i32 24, ; 406
	i32 32, ; 407
	i32 117, ; 408
	i32 269, ; 409
	i32 37, ; 410
	i32 16, ; 411
	i32 194, ; 412
	i32 0, ; 413
	i32 52, ; 414
	i32 276, ; 415
	i32 264, ; 416
	i32 178, ; 417
	i32 20, ; 418
	i32 123, ; 419
	i32 154, ; 420
	i32 243, ; 421
	i32 131, ; 422
	i32 148, ; 423
	i32 120, ; 424
	i32 28, ; 425
	i32 132, ; 426
	i32 100, ; 427
	i32 134, ; 428
	i32 153, ; 429
	i32 97, ; 430
	i32 125, ; 431
	i32 69, ; 432
	i32 72, ; 433
	i32 253, ; 434
	i32 281, ; 435
	i32 136, ; 436
	i32 124, ; 437
	i32 71, ; 438
	i32 111, ; 439
	i32 194, ; 440
	i32 152, ; 441
	i32 261, ; 442
	i32 118, ; 443
	i32 238, ; 444
	i32 127, ; 445
	i32 275, ; 446
	i32 196, ; 447
	i32 133, ; 448
	i32 203, ; 449
	i32 77, ; 450
	i32 46, ; 451
	i32 73, ; 452
	i32 63, ; 453
	i32 98, ; 454
	i32 84, ; 455
	i32 43, ; 456
	i32 276, ; 457
	i32 61, ; 458
	i32 209, ; 459
	i32 252, ; 460
	i32 37, ; 461
	i32 40, ; 462
	i32 267, ; 463
	i32 160, ; 464
	i32 98, ; 465
	i32 235, ; 466
	i32 221, ; 467
	i32 203, ; 468
	i32 277, ; 469
	i32 219, ; 470
	i32 135, ; 471
	i32 20, ; 472
	i32 65, ; 473
	i32 125, ; 474
	i32 75, ; 475
	i32 250, ; 476
	i32 164, ; 477
	i32 156, ; 478
	i32 5, ; 479
	i32 271, ; 480
	i32 49, ; 481
	i32 269, ; 482
	i32 144, ; 483
	i32 139, ; 484
	i32 100, ; 485
	i32 123, ; 486
	i32 120, ; 487
	i32 142, ; 488
	i32 39, ; 489
	i32 68, ; 490
	i32 41, ; 491
	i32 184, ; 492
	i32 174, ; 493
	i32 164, ; 494
	i32 73, ; 495
	i32 165, ; 496
	i32 204, ; 497
	i32 216, ; 498
	i32 127, ; 499
	i32 266, ; 500
	i32 68, ; 501
	i32 169, ; 502
	i32 272, ; 503
	i32 179, ; 504
	i32 195, ; 505
	i32 151, ; 506
	i32 45, ; 507
	i32 108, ; 508
	i32 48, ; 509
	i32 96, ; 510
	i32 31, ; 511
	i32 23, ; 512
	i32 166, ; 513
	i32 22, ; 514
	i32 138, ; 515
	i32 78, ; 516
	i32 193, ; 517
	i32 54, ; 518
	i32 217, ; 519
	i32 10, ; 520
	i32 226, ; 521
	i32 16, ; 522
	i32 139, ; 523
	i32 175, ; 524
	i32 214, ; 525
	i32 13, ; 526
	i32 208, ; 527
	i32 15, ; 528
	i32 122, ; 529
	i32 192, ; 530
	i32 0, ; 531
	i32 87, ; 532
	i32 149, ; 533
	i32 22, ; 534
	i32 34, ; 535
	i32 79, ; 536
	i32 180, ; 537
	i32 147, ; 538
	i32 80, ; 539
	i32 237, ; 540
	i32 223, ; 541
	i32 271, ; 542
	i32 42, ; 543
	i32 26, ; 544
	i32 251, ; 545
	i32 249, ; 546
	i32 107, ; 547
	i32 187, ; 548
	i32 110, ; 549
	i32 211, ; 550
	i32 7, ; 551
	i32 262, ; 552
	i32 44, ; 553
	i32 161, ; 554
	i32 201, ; 555
	i32 148, ; 556
	i32 279, ; 557
	i32 231, ; 558
	i32 38, ; 559
	i32 15, ; 560
	i32 222, ; 561
	i32 146, ; 562
	i32 8, ; 563
	i32 241, ; 564
	i32 130, ; 565
	i32 259, ; 566
	i32 94 ; 567
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
