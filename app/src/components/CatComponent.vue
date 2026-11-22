<script setup lang="ts">
import cat1 from '../assets/cat-1.jpg'
import cat2 from '../assets/cat-2.jpg'
import { computed, shallowRef } from 'vue'

const isRotate = shallowRef(false)
const colorIndex = shallowRef(0)
const catNames = ['Клёпа', 'Йося']
const catNameColors = [
    'bg-linear-to-r/srgb from-cyan-400 to-blue-500',
    'bg-linear-to-r/srgb from-emerald-400 to-teal-500',
    'bg-linear-to-r/srgb from-violet-500 to-purple-600',
    'bg-linear-to-r/srgb from-pink-500 to-rose-600',
    'bg-linear-to-r/srgb from-orange-400 to-red-500',
    'bg-linear-to-r/srgb from-yellow-400 to-amber-500',
    'bg-linear-to-r/srgb from-lime-400 to-green-500',
    'bg-linear-to-r/srgb from-sky-400 to-indigo-500',
    'bg-linear-to-r/srgb from-fuchsia-500 to-pink-600',
    'bg-linear-to-r/srgb from-rose-500 to-red-600',
    'bg-linear-to-r/srgb from-purple-500 to-pink-500',
    'bg-linear-to-r/srgb from-blue-500 to-cyan-400',
    'bg-linear-to-r/srgb from-green-400 to-emerald-500',
    'bg-linear-to-r/srgb from-yellow-300 to-orange-400',
    'bg-linear-to-r/srgb from-indigo-500 to-blue-500',
    'bg-linear-to-r/srgb from-red-400 to-orange-400',
    'bg-linear-to-r/srgb from-teal-400 to-cyan-500',
    'bg-linear-to-r/srgb from-pink-400 to-rose-500',
    'bg-linear-to-r/srgb from-violet-500 to-indigo-500',
    'bg-linear-to-r/srgb from-amber-400 to-yellow-500',
    'bg-linear-to-br/srgb from-blue-400 to-purple-500',
    'bg-linear-to-bl/srgb from-green-400 to-blue-500',
    'bg-linear-to-tr/srgb from-orange-400 to-red-500',
    'bg-linear-to-tl/srgb from-pink-400 to-rose-500',
    'bg-linear-to-b/srgb from-cyan-400 to-blue-500',
    'bg-linear-to-t/srgb from-emerald-400 to-teal-500',
    'bg-linear-to-l/srgb from-violet-500 to-purple-600',
    'bg-linear-to-r/srgb from-yellow-300 to-orange-400',
    'bg-linear-to-r/srgb from-pink-500 via-purple-500 to-indigo-500',
    'bg-linear-to-r/srgb from-green-400 via-cyan-400 to-blue-500',
    'bg-linear-to-r/srgb from-yellow-300 via-orange-400 to-red-500',
    'bg-linear-to-r/srgb from-emerald-400 via-teal-400 to-cyan-500',
    'bg-linear-to-r/srgb from-rose-500 via-pink-500 to-fuchsia-500',
    'bg-linear-to-r/srgb from-blue-400 via-indigo-500 to-purple-500',
    'bg-linear-to-r/srgb from-lime-400 via-green-500 to-emerald-500',
    'bg-linear-to-r/srgb from-amber-300 via-orange-400 to-red-500',
    'bg-linear-to-br/srgb from-blue-500 to-cyan-400',
    'bg-linear-to-bl/srgb from-purple-500 to-pink-500',
    'bg-linear-to-tr/srgb from-green-500 to-emerald-400',
    'bg-linear-to-tl/srgb from-orange-500 to-red-400',
    'bg-linear-to-br/srgb from-indigo-500 to-blue-400',
    'bg-linear-to-bl/srgb from-teal-500 to-cyan-400',
    'bg-linear-to-tr/srgb from-rose-500 to-pink-400',
    'bg-linear-to-tl/srgb from-yellow-400 to-amber-500',
    'bg-linear-to-r/srgb from-cyan-500 to-blue-600',
    'bg-linear-to-r/srgb from-emerald-500 to-teal-600',
    'bg-linear-to-r/srgb from-violet-600 to-purple-700',
    'bg-linear-to-r/srgb from-pink-600 to-rose-700',
    'bg-linear-to-r/srgb from-orange-500 to-red-600',
    'bg-linear-to-r/srgb from-yellow-500 to-amber-600',
    'bg-linear-to-r/srgb from-lime-500 to-green-600',
    'bg-linear-to-r/srgb from-sky-500 to-blue-600',
    'bg-linear-to-r/srgb from-red-400 via-yellow-400 to-green-400',
    'bg-linear-to-r/srgb from-pink-400 via-purple-400 to-blue-400',
    'bg-linear-to-r/srgb from-cyan-300 via-blue-400 to-indigo-500',
    'bg-linear-to-r/srgb from-yellow-300 via-orange-400 to-red-500',
    'bg-linear-to-r/srgb from-blue-600 to-cyan-500',
    'bg-linear-to-r/srgb from-purple-600 to-pink-500',
    'bg-linear-to-r/srgb from-emerald-600 to-teal-500',
    'bg-linear-to-r/srgb from-rose-600 to-pink-500',
    'bg-linear-to-r/srgb from-indigo-600 to-blue-500',
    'bg-linear-to-r/srgb from-red-500 to-orange-400',
    'bg-linear-to-r/srgb from-green-500 to-emerald-400',
    'bg-linear-to-r/srgb from-violet-600 to-purple-500',
]

const currentCatName = computed(() => catNames[isRotate.value ? 1 : 0])
const catNameColor = computed(() => catNameColors[colorIndex.value])

function rotateCard() {
    colorIndex.value = colorIndex.value === catNameColors.length - 1 ? 0 : colorIndex.value + 1
    isRotate.value = !isRotate.value
}
</script>

<template>
    <div class="text-center px-2 py-2 mb-6">
        <h1 class="text-7xl max-sm:text-5xl mb-4">Здесь ничего нет</h1>
        <p class="text-5xl max-sm:text-3xl">
            А это
            <span class="text-6xl max-sm:text-4xl bg-clip-text text-transparent px-2" :class="catNameColor">
                {{ currentCatName }}
            </span>
        </p>
    </div>

    <div class="card" @click="rotateCard">
        <img
            :src="cat1"
            alt="Клёпа"
            draggable="false"
            width="100%"
            class="card__front rounded-2xl"
            :class="{ rotate__front: isRotate }"
        />
        <img :src="cat2" alt="Йося" width="100%" class="card__back rounded-2xl" :class="{ rotate__back: isRotate }" />
    </div>

    <div class="grid place-content-center px-2 py-2 mt-4 animate-bounce">
        <div>
            <svg
                class="mx-auto"
                xmlns="http://www.w3.org/2000/svg"
                height="48px"
                viewBox="0 -960 960 960"
                width="48px"
                fill="currentColor"
            >
                <path d="M440-160v-487L216-423l-56-57 320-320 320 320-56 57-224-224v487h-80Z" />
            </svg>
        </div>

        <p class="text-5xl max-sm:text-3xl">Нажми</p>
    </div>
</template>

<style scoped>
.card {
    position: relative;
    color: white;
    min-width: 150px;
    max-width: 500px;
    margin: 0 auto;
    user-select: none;
    touch-action: none;
}

.card__front {
    z-index: 1;
    position: relative;
    backface-visibility: hidden;
    transition: transform 0.3s cubic-bezier(0.2, 0.85, 0.4, 1.275);
}

.card__back {
    z-index: 0;
    position: absolute;
    top: 0;
    backface-visibility: hidden;
    transform: rotateY(-180deg);
    transition: transform 0.3s cubic-bezier(0.2, 0.85, 0.4, 1.275);
}

.rotate__back {
    transform: rotateY(0deg);
    z-index: 2;
}

.rotate__front {
    transform: rotateY(180deg);
    z-index: -1;
}
</style>
