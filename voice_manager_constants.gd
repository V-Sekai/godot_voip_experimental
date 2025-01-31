# Workaround to lack of constant support in GDNative
const VOICE_SAMPLE_RATE = 48000 # samples / second
const CHANNEL_COUNT = 1

const MILLISECONDS_PER_SECOND = 1000
const MILLISECONDS_PER_PACKET = 10

const PACKET_DELTA_TIME = MILLISECONDS_PER_PACKET / float(MILLISECONDS_PER_SECOND)

const BUFFER_FRAME_COUNT_OLD = VOICE_SAMPLE_RATE / MILLISECONDS_PER_PACKET
const BUFFER_FRAME_COUNT = VOICE_SAMPLE_RATE * MILLISECONDS_PER_PACKET / MILLISECONDS_PER_SECOND
const BUFFER_BYTE_COUNT = 2

const BUFFER_OVERALL_SIZE = BUFFER_FRAME_COUNT * BUFFER_BYTE_COUNT
