; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [287 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [568 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 248
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 261
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 57725457, ; 8: it\Microsoft.Data.SqlClient.resources => 0x370d211 => 273
	i32 57727992, ; 9: ja\Microsoft.Data.SqlClient.resources => 0x370dbf8 => 274
	i32 66541672, ; 10: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 82292897, ; 12: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 117431740, ; 13: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 122350210, ; 14: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 15: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 265
	i32 139659294, ; 16: ja/Microsoft.Data.SqlClient.resources.dll => 0x853081e => 274
	i32 142721839, ; 17: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 18: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 19: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 20: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 232
	i32 166535111, ; 21: ru/Microsoft.Data.SqlClient.resources.dll => 0x9ed1fc7 => 278
	i32 176265551, ; 22: System.ServiceProcess => 0xa81994f => 132
	i32 184328833, ; 23: System.ValueTuple.dll => 0xafca281 => 151
	i32 205061960, ; 24: System.ComponentModel => 0xc38ff48 => 18
	i32 220171995, ; 25: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230752869, ; 26: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 27: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 28: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 29: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 256616158, ; 30: Avalonia.Themes.Fluent => 0xf4ba6de => 191
	i32 264223668, ; 31: zh-Hans\Microsoft.Data.SqlClient.resources => 0xfbfbbb4 => 280
	i32 276479776, ; 32: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 280482487, ; 33: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 244
	i32 291076382, ; 34: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 35: System.Net.Ping.dll => 0x11d123fd => 69
	i32 318968648, ; 36: Xamarin.AndroidX.Activity.dll => 0x13031348 => 224
	i32 321597661, ; 37: System.Numerics => 0x132b30dd => 83
	i32 330147069, ; 38: Microsoft.SqlServer.Server => 0x13ada4fd => 215
	i32 342366114, ; 39: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 245
	i32 360082299, ; 40: System.ServiceModel.Web => 0x15766b7b => 131
	i32 360671332, ; 41: pl\Microsoft.Data.SqlClient.resources => 0x157f6864 => 276
	i32 367780167, ; 42: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 43: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 44: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 45: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 46: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 47: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 48: _Microsoft.Android.Resource.Designer => 0x17969339 => 283
	i32 403441872, ; 49: WindowsBase => 0x180c08d0 => 165
	i32 407321033, ; 50: tr/Microsoft.Data.SqlClient.resources.dll => 0x184739c9 => 279
	i32 442565967, ; 51: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 52: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 243
	i32 451504562, ; 53: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 54: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 55: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 56: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 57: System.dll => 0x1bff388e => 164
	i32 476646585, ; 58: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 244
	i32 485463106, ; 59: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 209
	i32 497347661, ; 60: Avalonia.Dialogs => 0x1da4ec4d => 176
	i32 498788369, ; 61: System.ObjectModel => 0x1dbae811 => 84
	i32 513247710, ; 62: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 206
	i32 525008092, ; 63: SkiaSharp.dll => 0x1f4afcdc => 216
	i32 526420162, ; 64: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 65: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 265
	i32 527885601, ; 66: Avalonia.Skia => 0x1f76e521 => 190
	i32 530272170, ; 67: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 540030774, ; 68: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 69: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 70: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 546678719, ; 71: Avalonia.Controls.DataGrid.dll => 0x2095a7bf => 186
	i32 548916678, ; 72: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 198
	i32 549171840, ; 73: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 577335427, ; 74: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 591758111, ; 75: OrderWave.Android => 0x2345831f => 0
	i32 601371474, ; 76: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 77: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 78: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 79: Xamarin.AndroidX.CustomView => 0x2568904f => 239
	i32 637581149, ; 80: Avalonia.Controls => 0x2600b75d => 174
	i32 639843206, ; 81: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 242
	i32 643868501, ; 82: System.Net => 0x2660a755 => 81
	i32 662205335, ; 83: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 662410334, ; 84: Avalonia.Themes.Simple.dll => 0x277b945e => 192
	i32 663517072, ; 85: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 259
	i32 666292255, ; 86: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 230
	i32 672442732, ; 87: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 88: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 89: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 90: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 267
	i32 693804605, ; 91: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 92: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 93: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 262
	i32 700358131, ; 94: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 709152836, ; 95: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 222
	i32 720511267, ; 96: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 266
	i32 722857257, ; 97: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 723796036, ; 98: System.ClientModel.dll => 0x2b244044 => 217
	i32 735137430, ; 99: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 100: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 759454413, ; 101: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 102: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 103: System.IO.Compression => 0x2e394f87 => 46
	i32 789151979, ; 104: Microsoft.Extensions.Options => 0x2f0980eb => 205
	i32 793404064, ; 105: Avalonia.Metal.dll => 0x2f4a62a0 => 179
	i32 795860074, ; 106: Avalonia.MicroCom.dll => 0x2f6fdc6a => 180
	i32 804715423, ; 107: System.Data.Common => 0x2ff6fb9f => 22
	i32 823281589, ; 108: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 109: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 110: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 111: System.Net.Quic => 0x31b69d60 => 71
	i32 873119928, ; 112: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 113: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 114: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 115: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 116: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 928116545, ; 117: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 261
	i32 952186615, ; 118: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 119: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 266
	i32 967690846, ; 120: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 245
	i32 975236339, ; 121: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 122: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 123: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 124: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 125: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 126: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 127: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1008800730, ; 128: Avalonia.Base.dll => 0x3c2113da => 173
	i32 1012816738, ; 129: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 254
	i32 1019214401, ; 130: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 131: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 203
	i32 1035644815, ; 132: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 228
	i32 1036536393, ; 133: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 134: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1048439329, ; 135: de/Microsoft.Data.SqlClient.resources.dll => 0x3e7dea21 => 270
	i32 1052210849, ; 136: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 249
	i32 1052365087, ; 137: Avalonia.OpenGL.dll => 0x3eb9d11f => 181
	i32 1062017875, ; 138: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 208
	i32 1072331303, ; 139: Avalonia.Skia.dll => 0x3fea7a27 => 190
	i32 1082857460, ; 140: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 141: Xamarin.Kotlin.StdLib => 0x409e66d8 => 263
	i32 1089913930, ; 142: System.Diagnostics.EventLog.dll => 0x40f6c44a => 219
	i32 1098259244, ; 143: System => 0x41761b2c => 164
	i32 1138436374, ; 144: Microsoft.Data.SqlClient.dll => 0x43db2916 => 200
	i32 1143774617, ; 145: MicroCom.Runtime.dll => 0x442c9d99 => 197
	i32 1170634674, ; 146: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 147: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 258
	i32 1181870847, ; 148: Microsoft.Bcl.Cryptography => 0x4671eaff => 199
	i32 1204270330, ; 149: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 230
	i32 1204575371, ; 150: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 202
	i32 1208641965, ; 151: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1214827643, ; 152: CommunityToolkit.Mvvm => 0x4868cc7b => 195
	i32 1219128291, ; 153: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1246548578, ; 154: Xamarin.AndroidX.Collection.Jvm.dll => 0x4a4cd262 => 233
	i32 1253011324, ; 155: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260169368, ; 156: Avalonia.Vulkan.dll => 0x4b1ca898 => 182
	i32 1264511973, ; 157: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 255
	i32 1267360935, ; 158: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 257
	i32 1275534314, ; 159: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 267
	i32 1278448581, ; 160: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 227
	i32 1286058215, ; 161: Avalonia.Fonts.Inter => 0x4ca7b0e7 => 188
	i32 1293217323, ; 162: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 240
	i32 1309188875, ; 163: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1315359775, ; 164: cs/Microsoft.Data.SqlClient.resources.dll => 0x4e66cc1f => 269
	i32 1324164729, ; 165: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 166: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 167: System.IO => 0x514d38cd => 57
	i32 1376866003, ; 168: Xamarin.AndroidX.SavedState => 0x52114ed3 => 254
	i32 1379779777, ; 169: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1397501879, ; 170: MicroCom.Runtime => 0x534c2fb7 => 197
	i32 1402170036, ; 171: System.Configuration.dll => 0x53936ab4 => 19
	i32 1408764838, ; 172: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 173: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 174: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1434145427, ; 175: System.Runtime.Handles => 0x557b5293 => 104
	i32 1439761251, ; 176: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 177: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 178: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 179: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 180: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1460893475, ; 181: System.IdentityModel.Tokens.Jwt => 0x57137723 => 220
	i32 1461234159, ; 182: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 183: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 184: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 185: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 229
	i32 1470490898, ; 186: Microsoft.Extensions.Primitives => 0x57a5e912 => 206
	i32 1479771757, ; 187: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 188: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 189: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1498168481, ; 190: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 210
	i32 1536373174, ; 191: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 192: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 193: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 194: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1560592391, ; 195: Avalonia.Controls.DataGrid => 0x5d04c007 => 186
	i32 1565862583, ; 196: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 197: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 198: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 199: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582305585, ; 200: Azure.Identity => 0x5e501131 => 194
	i32 1592978981, ; 201: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1596263029, ; 202: zh-Hant\Microsoft.Data.SqlClient.resources => 0x5f250a75 => 281
	i32 1601112923, ; 203: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 204: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1613762098, ; 205: Avalonia.Base => 0x60300e32 => 173
	i32 1618516317, ; 206: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 207: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 251
	i32 1622358360, ; 208: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1623297518, ; 209: Avalonia.Markup.Xaml.dll => 0x60c18dee => 177
	i32 1624330220, ; 210: Avalonia.Themes.Fluent.dll => 0x60d14fec => 191
	i32 1628113371, ; 211: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 213
	i32 1635184631, ; 212: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 242
	i32 1636350590, ; 213: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 238
	i32 1639515021, ; 214: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 215: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 216: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 217: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 218: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 256
	i32 1675553242, ; 219: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 220: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 221: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 222: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 223: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 224: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 225: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 264
	i32 1701541528, ; 226: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1726116996, ; 227: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 228: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1744735666, ; 229: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 230: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 231: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 232: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 233: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 234: System.Reflection.Extensions => 0x6942234e => 93
	i32 1776026572, ; 235: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 236: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 237: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1788241197, ; 238: Xamarin.AndroidX.Fragment => 0x6a96652d => 243
	i32 1794500907, ; 239: Microsoft.Identity.Client.dll => 0x6af5e92b => 207
	i32 1796167890, ; 240: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 198
	i32 1808609942, ; 241: Xamarin.AndroidX.Loader => 0x6bcd3296 => 251
	i32 1813058853, ; 242: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 263
	i32 1818787751, ; 243: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 244: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 245: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 246: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 204
	i32 1832351152, ; 247: Avalonia.Android => 0x6d3775b0 => 184
	i32 1836181115, ; 248: Avalonia.Fonts.Inter.dll => 0x6d71e67b => 188
	i32 1858542181, ; 249: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 250: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1871986876, ; 251: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 213
	i32 1879696579, ; 252: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 253: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 231
	i32 1888955245, ; 254: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 255: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1894718188, ; 256: OrderWave => 0x70ef1aec => 282
	i32 1898237753, ; 257: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 258: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 259: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1919016533, ; 260: Xamarin.AndroidX.Core.SplashScreen.dll => 0x7261de55 => 237
	i32 1939592360, ; 261: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 262: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1983156543, ; 263: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 264
	i32 1986222447, ; 264: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 214
	i32 1994945615, ; 265: Avalonia.Metal => 0x76e8744f => 179
	i32 2011961780, ; 266: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 267: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 249
	i32 2040764568, ; 268: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 208
	i32 2045470958, ; 269: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 270: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 246
	i32 2060060697, ; 271: System.Windows.dll => 0x7aca0819 => 154
	i32 2070888862, ; 272: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 273: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 274: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 275: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 276: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 277: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 278: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2181898931, ; 279: Microsoft.Extensions.Options.dll => 0x820d22b3 => 205
	i32 2192057212, ; 280: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 204
	i32 2193016926, ; 281: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 282: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 268
	i32 2201231467, ; 283: System.Net.Http => 0x8334206b => 64
	i32 2203033907, ; 284: Avalonia.MicroCom => 0x834fa133 => 180
	i32 2217644978, ; 285: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 258
	i32 2220367410, ; 286: Xamarin.AndroidX.Core.SplashScreen => 0x84581e32 => 237
	i32 2222056684, ; 287: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2228745826, ; 288: pt-BR\Microsoft.Data.SqlClient.resources => 0x84d7f662 => 277
	i32 2252106437, ; 289: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2253551641, ; 290: Microsoft.IdentityModel.Protocols => 0x86527819 => 212
	i32 2256313426, ; 291: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 292: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2293034957, ; 293: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 294: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 295: System.Net.Mail => 0x88ffe49e => 66
	i32 2305521784, ; 296: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2309278602, ; 297: ko\Microsoft.Data.SqlClient.resources => 0x89a4cb8a => 275
	i32 2309601686, ; 298: Avalonia => 0x89a9b996 => 183
	i32 2315684594, ; 299: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 225
	i32 2320631194, ; 300: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 301: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 302: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 303: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 304: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369706906, ; 305: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 211
	i32 2378619854, ; 306: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 307: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2384749489, ; 308: Avalonia.Android.dll => 0x8e2463b1 => 184
	i32 2401565422, ; 309: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 310: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 241
	i32 2408407545, ; 311: Avalonia.Markup.dll => 0x8f8d61f9 => 178
	i32 2421380589, ; 312: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2435356389, ; 313: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 314: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 315: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 316: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 317: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2471841756, ; 318: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 319: Java.Interop.dll => 0x93918882 => 168
	i32 2483903535, ; 320: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 321: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 322: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 323: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 324: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 248
	i32 2509217888, ; 325: System.Diagnostics.EventLog => 0x958fa060 => 219
	i32 2538310050, ; 326: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2562349572, ; 327: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 328: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581819634, ; 329: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 257
	i32 2585220780, ; 330: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 331: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 332: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2605712449, ; 333: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 268
	i32 2617129537, ; 334: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 335: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 336: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 238
	i32 2627185994, ; 337: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2628210652, ; 338: System.Memory.Data => 0x9ca74fdc => 221
	i32 2629843544, ; 339: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2640290731, ; 340: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 211
	i32 2640706905, ; 341: Azure.Core => 0x9d65fd59 => 193
	i32 2660759594, ; 342: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 223
	i32 2663698177, ; 343: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 344: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 345: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2668319029, ; 346: Avalonia.Controls.ColorPicker.dll => 0x9f0b5135 => 185
	i32 2676780864, ; 347: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 348: Azure.Identity.dll => 0x9f9148fa => 194
	i32 2678266992, ; 349: tr\Microsoft.Data.SqlClient.resources => 0x9fa31c70 => 279
	i32 2686887180, ; 350: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 351: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 352: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 256
	i32 2705935227, ; 353: Avalonia.OpenGL => 0xa1494b7b => 181
	i32 2713243005, ; 354: Avalonia.Remote.Protocol.dll => 0xa1b8cd7d => 189
	i32 2715334215, ; 355: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 356: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 357: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 358: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 359: Xamarin.AndroidX.Activity => 0xa2e0939b => 224
	i32 2735172069, ; 360: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 361: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 229
	i32 2740051746, ; 362: Microsoft.Identity.Client => 0xa351df22 => 207
	i32 2740948882, ; 363: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 364: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2755098380, ; 365: Microsoft.SqlServer.Server.dll => 0xa437770c => 215
	i32 2765824710, ; 366: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 367: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 262
	i32 2778768386, ; 368: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 260
	i32 2779977773, ; 369: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 253
	i32 2803228030, ; 370: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2804509662, ; 371: es/Microsoft.Data.SqlClient.resources.dll => 0xa7296bde => 271
	i32 2819470561, ; 372: System.Xml.dll => 0xa80db4e1 => 163
	i32 2819479764, ; 373: Avalonia.Controls.dll => 0xa80dd8d4 => 174
	i32 2821205001, ; 374: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 375: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 253
	i32 2824502124, ; 376: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2841937114, ; 377: it/Microsoft.Data.SqlClient.resources.dll => 0xa96484da => 273
	i32 2849599387, ; 378: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 379: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 260
	i32 2861098320, ; 380: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2867946736, ; 381: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 223
	i32 2875220617, ; 382: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2887636118, ; 383: System.Net.dll => 0xac1dd496 => 81
	i32 2891872470, ; 384: cs\Microsoft.Data.SqlClient.resources => 0xac5e78d6 => 269
	i32 2899753641, ; 385: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 386: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 387: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 388: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 389: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2919462931, ; 390: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 391: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 226
	i32 2921597873, ; 392: Avalonia.Markup.Xaml => 0xae240bb1 => 177
	i32 2936416060, ; 393: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 394: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 395: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2944313911, ; 396: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 218
	i32 2959614098, ; 397: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 398: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 399: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2977263743, ; 400: Avalonia.Controls.ColorPicker => 0xb175707f => 185
	i32 2978675010, ; 401: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 240
	i32 2996846495, ; 402: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 247
	i32 3012788804, ; 403: System.Configuration.ConfigurationManager => 0xb3938244 => 218
	i32 3016983068, ; 404: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 255
	i32 3023353419, ; 405: WindowsBase.dll => 0xb434b64b => 165
	i32 3023511517, ; 406: ru\Microsoft.Data.SqlClient.resources => 0xb4371fdd => 278
	i32 3033605958, ; 407: System.Memory.Data.dll => 0xb4d12746 => 221
	i32 3038032645, ; 408: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 283
	i32 3059408633, ; 409: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 410: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 411: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 201
	i32 3075834255, ; 412: System.Threading.Tasks => 0xb755818f => 144
	i32 3082350816, ; 413: Avalonia.Themes.Simple => 0xb7b8f0e0 => 192
	i32 3084678329, ; 414: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 214
	i32 3090735792, ; 415: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3091917316, ; 416: Avalonia.Vulkan => 0xb84aea04 => 182
	i32 3099732863, ; 417: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 418: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 419: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 420: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 421: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 422: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 423: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3158628304, ; 424: zh-Hant/Microsoft.Data.SqlClient.resources.dll => 0xbc44d7d0 => 281
	i32 3159123045, ; 425: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 426: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3192346100, ; 427: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 428: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 429: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 201
	i32 3204380047, ; 430: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 431: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3220365878, ; 432: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 433: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 434: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3265493905, ; 435: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 436: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3268887220, ; 437: fr/Microsoft.Data.SqlClient.resources.dll => 0xc2d742b4 => 272
	i32 3271810421, ; 438: OrderWave.dll => 0xc303dd75 => 282
	i32 3276600297, ; 439: pt-BR/Microsoft.Data.SqlClient.resources.dll => 0xc34cf3e9 => 277
	i32 3277815716, ; 440: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 441: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 442: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 443: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 444: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 445: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3312457198, ; 446: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 210
	i32 3316684772, ; 447: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 448: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 239
	i32 3317144872, ; 449: System.Data => 0xc5b79d28 => 24
	i32 3340387945, ; 450: SkiaSharp => 0xc71a4669 => 216
	i32 3340431453, ; 451: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 231
	i32 3343947874, ; 452: fr\Microsoft.Data.SqlClient.resources => 0xc7509862 => 272
	i32 3345895724, ; 453: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 252
	i32 3358260929, ; 454: System.Text.Json => 0xc82afec1 => 137
	i32 3362522851, ; 455: Xamarin.AndroidX.Core => 0xc86c06e3 => 235
	i32 3366347497, ; 456: Java.Interop => 0xc8a662e9 => 168
	i32 3374879918, ; 457: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 212
	i32 3395150330, ; 458: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 459: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3429136800, ; 460: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 461: netstandard => 0xcc7d82b4 => 167
	i32 3445260447, ; 462: System.Formats.Tar => 0xcd5a809f => 39
	i32 3471940407, ; 463: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 464: Mono.Android => 0xcf3163e6 => 171
	i32 3485117614, ; 465: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 466: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 467: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 234
	i32 3497148347, ; 468: Avalonia.Markup => 0xd0723fbb => 178
	i32 3509114376, ; 469: System.Xml.Linq => 0xd128d608 => 155
	i32 3512826571, ; 470: Microsoft.Bcl.Cryptography.dll => 0xd1617acb => 199
	i32 3515174580, ; 471: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 472: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 473: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3545306353, ; 474: Microsoft.Data.SqlClient => 0xd35114f1 => 200
	i32 3555084973, ; 475: de\Microsoft.Data.SqlClient.resources => 0xd3e64aad => 270
	i32 3558648585, ; 476: System.ClientModel => 0xd41cab09 => 217
	i32 3560100363, ; 477: System.Threading.Timer => 0xd432d20b => 147
	i32 3561949811, ; 478: Azure.Core.dll => 0xd44f0a73 => 193
	i32 3570554715, ; 479: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3598340787, ; 480: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 481: System.Linq.dll => 0xd715a361 => 61
	i32 3615210680, ; 482: Avalonia.Dialogs.dll => 0xd77bbcb8 => 176
	i32 3624195450, ; 483: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3633644679, ; 484: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 226
	i32 3638274909, ; 485: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 486: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 246
	i32 3645089577, ; 487: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3660523487, ; 488: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 489: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3684561358, ; 490: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 234
	i32 3700591436, ; 491: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 209
	i32 3700866549, ; 492: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 493: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 236
	i32 3716563718, ; 494: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 495: Xamarin.AndroidX.Annotation => 0xdda814c6 => 225
	i32 3732100267, ; 496: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 497: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3738680428, ; 498: OrderWave.Android.dll => 0xded7bc6c => 0
	i32 3748608112, ; 499: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 500: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786282454, ; 501: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 232
	i32 3792276235, ; 502: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3792835768, ; 503: HarfBuzzSharp => 0xe21214b8 => 196
	i32 3802395368, ; 504: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3803019198, ; 505: zh-Hans/Microsoft.Data.SqlClient.resources.dll => 0xe2ad77be => 280
	i32 3807198597, ; 506: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 222
	i32 3819260425, ; 507: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 508: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 509: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 510: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 203
	i32 3844307129, ; 511: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3848348906, ; 512: es\Microsoft.Data.SqlClient.resources => 0xe56124ea => 271
	i32 3849253459, ; 513: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 514: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 515: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 516: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 517: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3888767677, ; 518: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 252
	i32 3896106733, ; 519: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 520: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 235
	i32 3901907137, ; 521: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3910130544, ; 522: Xamarin.AndroidX.Collection.Jvm => 0xe90fdb70 => 233
	i32 3920810846, ; 523: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 524: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 259
	i32 3928044579, ; 525: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 526: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3945713374, ; 527: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 528: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 529: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 228
	i32 3959773229, ; 530: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 247
	i32 4000935579, ; 531: Avalonia.dll => 0xee796e9b => 183
	i32 4003436829, ; 532: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4003906742, ; 533: HarfBuzzSharp.dll => 0xeea6c4b6 => 196
	i32 4015948917, ; 534: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 227
	i32 4025784931, ; 535: System.Memory => 0xeff49a63 => 62
	i32 4054681211, ; 536: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4063759658, ; 537: Avalonia.Remote.Protocol => 0xf2380d2a => 189
	i32 4064142224, ; 538: pl/Microsoft.Data.SqlClient.resources.dll => 0xf23de390 => 276
	i32 4068434129, ; 539: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4071413702, ; 540: Avalonia.DesignerSupport => 0xf2acd7c6 => 175
	i32 4073602200, ; 541: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4074166990, ; 542: Avalonia.Diagnostics => 0xf2d6dace => 187
	i32 4099507663, ; 543: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 544: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 545: Xamarin.AndroidX.Emoji2 => 0xf479582c => 241
	i32 4101842092, ; 546: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 202
	i32 4127667938, ; 547: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 548: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 549: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4151237749, ; 550: System.Core => 0xf76edc75 => 21
	i32 4153554407, ; 551: Avalonia.Diagnostics.dll => 0xf79235e7 => 187
	i32 4159265925, ; 552: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 553: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 554: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 555: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 556: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 250
	i32 4185676441, ; 557: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 558: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 559: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 560: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 236
	i32 4257443520, ; 561: ko/Microsoft.Data.SqlClient.resources.dll => 0xfdc36ec0 => 275
	i32 4260525087, ; 562: System.Buffers => 0xfdf2741f => 7
	i32 4261741634, ; 563: Avalonia.DesignerSupport.dll => 0xfe050442 => 175
	i32 4263231520, ; 564: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 220
	i32 4274623895, ; 565: CommunityToolkit.Mvvm.dll => 0xfec99597 => 195
	i32 4274976490, ; 566: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959 ; 567: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 250
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [568 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 248, ; 3
	i32 261, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 273, ; 8
	i32 274, ; 9
	i32 30, ; 10
	i32 124, ; 11
	i32 102, ; 12
	i32 107, ; 13
	i32 139, ; 14
	i32 265, ; 15
	i32 274, ; 16
	i32 77, ; 17
	i32 124, ; 18
	i32 13, ; 19
	i32 232, ; 20
	i32 278, ; 21
	i32 132, ; 22
	i32 151, ; 23
	i32 18, ; 24
	i32 26, ; 25
	i32 1, ; 26
	i32 59, ; 27
	i32 42, ; 28
	i32 91, ; 29
	i32 191, ; 30
	i32 280, ; 31
	i32 147, ; 32
	i32 244, ; 33
	i32 54, ; 34
	i32 69, ; 35
	i32 224, ; 36
	i32 83, ; 37
	i32 215, ; 38
	i32 245, ; 39
	i32 131, ; 40
	i32 276, ; 41
	i32 55, ; 42
	i32 149, ; 43
	i32 74, ; 44
	i32 145, ; 45
	i32 62, ; 46
	i32 146, ; 47
	i32 283, ; 48
	i32 165, ; 49
	i32 279, ; 50
	i32 12, ; 51
	i32 243, ; 52
	i32 125, ; 53
	i32 152, ; 54
	i32 113, ; 55
	i32 166, ; 56
	i32 164, ; 57
	i32 244, ; 58
	i32 209, ; 59
	i32 176, ; 60
	i32 84, ; 61
	i32 206, ; 62
	i32 216, ; 63
	i32 150, ; 64
	i32 265, ; 65
	i32 190, ; 66
	i32 60, ; 67
	i32 51, ; 68
	i32 103, ; 69
	i32 114, ; 70
	i32 186, ; 71
	i32 198, ; 72
	i32 40, ; 73
	i32 120, ; 74
	i32 0, ; 75
	i32 52, ; 76
	i32 44, ; 77
	i32 119, ; 78
	i32 239, ; 79
	i32 174, ; 80
	i32 242, ; 81
	i32 81, ; 82
	i32 136, ; 83
	i32 192, ; 84
	i32 259, ; 85
	i32 230, ; 86
	i32 8, ; 87
	i32 73, ; 88
	i32 155, ; 89
	i32 267, ; 90
	i32 154, ; 91
	i32 92, ; 92
	i32 262, ; 93
	i32 45, ; 94
	i32 222, ; 95
	i32 266, ; 96
	i32 109, ; 97
	i32 217, ; 98
	i32 129, ; 99
	i32 25, ; 100
	i32 72, ; 101
	i32 55, ; 102
	i32 46, ; 103
	i32 205, ; 104
	i32 179, ; 105
	i32 180, ; 106
	i32 22, ; 107
	i32 86, ; 108
	i32 43, ; 109
	i32 160, ; 110
	i32 71, ; 111
	i32 3, ; 112
	i32 42, ; 113
	i32 63, ; 114
	i32 16, ; 115
	i32 53, ; 116
	i32 261, ; 117
	i32 105, ; 118
	i32 266, ; 119
	i32 245, ; 120
	i32 34, ; 121
	i32 158, ; 122
	i32 85, ; 123
	i32 32, ; 124
	i32 12, ; 125
	i32 51, ; 126
	i32 56, ; 127
	i32 173, ; 128
	i32 254, ; 129
	i32 36, ; 130
	i32 203, ; 131
	i32 228, ; 132
	i32 35, ; 133
	i32 58, ; 134
	i32 270, ; 135
	i32 249, ; 136
	i32 181, ; 137
	i32 208, ; 138
	i32 190, ; 139
	i32 17, ; 140
	i32 263, ; 141
	i32 219, ; 142
	i32 164, ; 143
	i32 200, ; 144
	i32 197, ; 145
	i32 153, ; 146
	i32 258, ; 147
	i32 199, ; 148
	i32 230, ; 149
	i32 202, ; 150
	i32 29, ; 151
	i32 195, ; 152
	i32 52, ; 153
	i32 233, ; 154
	i32 5, ; 155
	i32 182, ; 156
	i32 255, ; 157
	i32 257, ; 158
	i32 267, ; 159
	i32 227, ; 160
	i32 188, ; 161
	i32 240, ; 162
	i32 85, ; 163
	i32 269, ; 164
	i32 61, ; 165
	i32 112, ; 166
	i32 57, ; 167
	i32 254, ; 168
	i32 99, ; 169
	i32 197, ; 170
	i32 19, ; 171
	i32 111, ; 172
	i32 101, ; 173
	i32 102, ; 174
	i32 104, ; 175
	i32 71, ; 176
	i32 38, ; 177
	i32 32, ; 178
	i32 103, ; 179
	i32 73, ; 180
	i32 220, ; 181
	i32 9, ; 182
	i32 123, ; 183
	i32 46, ; 184
	i32 229, ; 185
	i32 206, ; 186
	i32 9, ; 187
	i32 43, ; 188
	i32 4, ; 189
	i32 210, ; 190
	i32 31, ; 191
	i32 138, ; 192
	i32 92, ; 193
	i32 93, ; 194
	i32 186, ; 195
	i32 49, ; 196
	i32 141, ; 197
	i32 112, ; 198
	i32 140, ; 199
	i32 194, ; 200
	i32 115, ; 201
	i32 281, ; 202
	i32 157, ; 203
	i32 76, ; 204
	i32 173, ; 205
	i32 79, ; 206
	i32 251, ; 207
	i32 37, ; 208
	i32 177, ; 209
	i32 191, ; 210
	i32 213, ; 211
	i32 242, ; 212
	i32 238, ; 213
	i32 64, ; 214
	i32 138, ; 215
	i32 15, ; 216
	i32 116, ; 217
	i32 256, ; 218
	i32 48, ; 219
	i32 70, ; 220
	i32 80, ; 221
	i32 126, ; 222
	i32 94, ; 223
	i32 121, ; 224
	i32 264, ; 225
	i32 26, ; 226
	i32 97, ; 227
	i32 28, ; 228
	i32 149, ; 229
	i32 169, ; 230
	i32 4, ; 231
	i32 98, ; 232
	i32 33, ; 233
	i32 93, ; 234
	i32 21, ; 235
	i32 41, ; 236
	i32 170, ; 237
	i32 243, ; 238
	i32 207, ; 239
	i32 198, ; 240
	i32 251, ; 241
	i32 263, ; 242
	i32 2, ; 243
	i32 134, ; 244
	i32 111, ; 245
	i32 204, ; 246
	i32 184, ; 247
	i32 188, ; 248
	i32 58, ; 249
	i32 95, ; 250
	i32 213, ; 251
	i32 39, ; 252
	i32 231, ; 253
	i32 25, ; 254
	i32 94, ; 255
	i32 282, ; 256
	i32 89, ; 257
	i32 99, ; 258
	i32 10, ; 259
	i32 237, ; 260
	i32 87, ; 261
	i32 100, ; 262
	i32 264, ; 263
	i32 214, ; 264
	i32 179, ; 265
	i32 7, ; 266
	i32 249, ; 267
	i32 208, ; 268
	i32 88, ; 269
	i32 246, ; 270
	i32 154, ; 271
	i32 33, ; 272
	i32 116, ; 273
	i32 82, ; 274
	i32 20, ; 275
	i32 11, ; 276
	i32 162, ; 277
	i32 3, ; 278
	i32 205, ; 279
	i32 204, ; 280
	i32 84, ; 281
	i32 268, ; 282
	i32 64, ; 283
	i32 180, ; 284
	i32 258, ; 285
	i32 237, ; 286
	i32 143, ; 287
	i32 277, ; 288
	i32 157, ; 289
	i32 212, ; 290
	i32 41, ; 291
	i32 117, ; 292
	i32 131, ; 293
	i32 75, ; 294
	i32 66, ; 295
	i32 172, ; 296
	i32 275, ; 297
	i32 183, ; 298
	i32 225, ; 299
	i32 143, ; 300
	i32 106, ; 301
	i32 151, ; 302
	i32 70, ; 303
	i32 156, ; 304
	i32 211, ; 305
	i32 121, ; 306
	i32 127, ; 307
	i32 184, ; 308
	i32 152, ; 309
	i32 241, ; 310
	i32 178, ; 311
	i32 141, ; 312
	i32 20, ; 313
	i32 14, ; 314
	i32 135, ; 315
	i32 75, ; 316
	i32 59, ; 317
	i32 167, ; 318
	i32 168, ; 319
	i32 15, ; 320
	i32 74, ; 321
	i32 6, ; 322
	i32 23, ; 323
	i32 248, ; 324
	i32 219, ; 325
	i32 91, ; 326
	i32 1, ; 327
	i32 136, ; 328
	i32 257, ; 329
	i32 134, ; 330
	i32 69, ; 331
	i32 146, ; 332
	i32 268, ; 333
	i32 88, ; 334
	i32 96, ; 335
	i32 238, ; 336
	i32 31, ; 337
	i32 221, ; 338
	i32 45, ; 339
	i32 211, ; 340
	i32 193, ; 341
	i32 223, ; 342
	i32 109, ; 343
	i32 158, ; 344
	i32 35, ; 345
	i32 185, ; 346
	i32 22, ; 347
	i32 194, ; 348
	i32 279, ; 349
	i32 114, ; 350
	i32 57, ; 351
	i32 256, ; 352
	i32 181, ; 353
	i32 189, ; 354
	i32 144, ; 355
	i32 118, ; 356
	i32 120, ; 357
	i32 110, ; 358
	i32 224, ; 359
	i32 139, ; 360
	i32 229, ; 361
	i32 207, ; 362
	i32 54, ; 363
	i32 105, ; 364
	i32 215, ; 365
	i32 133, ; 366
	i32 262, ; 367
	i32 260, ; 368
	i32 253, ; 369
	i32 159, ; 370
	i32 271, ; 371
	i32 163, ; 372
	i32 174, ; 373
	i32 132, ; 374
	i32 253, ; 375
	i32 161, ; 376
	i32 273, ; 377
	i32 140, ; 378
	i32 260, ; 379
	i32 169, ; 380
	i32 223, ; 381
	i32 40, ; 382
	i32 81, ; 383
	i32 269, ; 384
	i32 56, ; 385
	i32 37, ; 386
	i32 97, ; 387
	i32 166, ; 388
	i32 172, ; 389
	i32 82, ; 390
	i32 226, ; 391
	i32 177, ; 392
	i32 98, ; 393
	i32 30, ; 394
	i32 159, ; 395
	i32 218, ; 396
	i32 18, ; 397
	i32 127, ; 398
	i32 119, ; 399
	i32 185, ; 400
	i32 240, ; 401
	i32 247, ; 402
	i32 218, ; 403
	i32 255, ; 404
	i32 165, ; 405
	i32 278, ; 406
	i32 221, ; 407
	i32 283, ; 408
	i32 170, ; 409
	i32 16, ; 410
	i32 201, ; 411
	i32 144, ; 412
	i32 192, ; 413
	i32 214, ; 414
	i32 125, ; 415
	i32 182, ; 416
	i32 118, ; 417
	i32 38, ; 418
	i32 115, ; 419
	i32 47, ; 420
	i32 142, ; 421
	i32 117, ; 422
	i32 34, ; 423
	i32 281, ; 424
	i32 95, ; 425
	i32 53, ; 426
	i32 129, ; 427
	i32 153, ; 428
	i32 201, ; 429
	i32 24, ; 430
	i32 161, ; 431
	i32 148, ; 432
	i32 104, ; 433
	i32 89, ; 434
	i32 60, ; 435
	i32 142, ; 436
	i32 272, ; 437
	i32 282, ; 438
	i32 277, ; 439
	i32 100, ; 440
	i32 5, ; 441
	i32 13, ; 442
	i32 122, ; 443
	i32 135, ; 444
	i32 28, ; 445
	i32 210, ; 446
	i32 72, ; 447
	i32 239, ; 448
	i32 24, ; 449
	i32 216, ; 450
	i32 231, ; 451
	i32 272, ; 452
	i32 252, ; 453
	i32 137, ; 454
	i32 235, ; 455
	i32 168, ; 456
	i32 212, ; 457
	i32 101, ; 458
	i32 123, ; 459
	i32 163, ; 460
	i32 167, ; 461
	i32 39, ; 462
	i32 17, ; 463
	i32 171, ; 464
	i32 137, ; 465
	i32 150, ; 466
	i32 234, ; 467
	i32 178, ; 468
	i32 155, ; 469
	i32 199, ; 470
	i32 130, ; 471
	i32 19, ; 472
	i32 65, ; 473
	i32 200, ; 474
	i32 270, ; 475
	i32 217, ; 476
	i32 147, ; 477
	i32 193, ; 478
	i32 47, ; 479
	i32 79, ; 480
	i32 61, ; 481
	i32 176, ; 482
	i32 106, ; 483
	i32 226, ; 484
	i32 49, ; 485
	i32 246, ; 486
	i32 14, ; 487
	i32 68, ; 488
	i32 171, ; 489
	i32 234, ; 490
	i32 209, ; 491
	i32 78, ; 492
	i32 236, ; 493
	i32 108, ; 494
	i32 225, ; 495
	i32 67, ; 496
	i32 63, ; 497
	i32 0, ; 498
	i32 27, ; 499
	i32 160, ; 500
	i32 232, ; 501
	i32 10, ; 502
	i32 196, ; 503
	i32 11, ; 504
	i32 280, ; 505
	i32 222, ; 506
	i32 78, ; 507
	i32 126, ; 508
	i32 83, ; 509
	i32 203, ; 510
	i32 66, ; 511
	i32 271, ; 512
	i32 107, ; 513
	i32 65, ; 514
	i32 128, ; 515
	i32 122, ; 516
	i32 77, ; 517
	i32 252, ; 518
	i32 8, ; 519
	i32 235, ; 520
	i32 2, ; 521
	i32 233, ; 522
	i32 44, ; 523
	i32 259, ; 524
	i32 156, ; 525
	i32 128, ; 526
	i32 23, ; 527
	i32 133, ; 528
	i32 228, ; 529
	i32 247, ; 530
	i32 183, ; 531
	i32 29, ; 532
	i32 196, ; 533
	i32 227, ; 534
	i32 62, ; 535
	i32 90, ; 536
	i32 189, ; 537
	i32 276, ; 538
	i32 87, ; 539
	i32 175, ; 540
	i32 148, ; 541
	i32 187, ; 542
	i32 36, ; 543
	i32 86, ; 544
	i32 241, ; 545
	i32 202, ; 546
	i32 50, ; 547
	i32 6, ; 548
	i32 90, ; 549
	i32 21, ; 550
	i32 187, ; 551
	i32 162, ; 552
	i32 96, ; 553
	i32 50, ; 554
	i32 113, ; 555
	i32 250, ; 556
	i32 130, ; 557
	i32 76, ; 558
	i32 27, ; 559
	i32 236, ; 560
	i32 275, ; 561
	i32 7, ; 562
	i32 175, ; 563
	i32 220, ; 564
	i32 195, ; 565
	i32 110, ; 566
	i32 250 ; 567
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

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
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
